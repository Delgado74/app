import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mostro/features/home/providers/effective_rate_provider.dart';
import 'package:mostro/features/home/providers/home_order_providers.dart';
import 'package:mostro/features/order/providers/exchange_rate_provider.dart';

import '../../../support/fake_orders.dart';

ProviderContainer _makeContainer({
  required List<OrderItem> orders,
  required double? Function(String code) rate,
}) {
  final container = ProviderContainer(
    overrides: [
      filteredOrdersProvider.overrideWith((ref) => orders),
      exchangeRateProvider.overrideWith((ref, code) async => rate(code)),
    ],
  );
  addTearDown(container.dispose);
  return container;
}

/// Resolves every fiat rate the [orders] list will ask the node for before
/// reading [effectiveRatesProvider], so the future-backed
/// [exchangeRateProvider] already holds its values and the computed map is
/// deterministic.
Future<Map<String, double>> _readRates(
  ProviderContainer container,
  List<OrderItem> orders,
) async {
  final codes = <String>{
    'USD',
    for (final order in orders) order.fiatCode,
  };
  for (final code in codes) {
    await container.read(exchangeRateProvider(code)).future;
  }
  return container.read(effectiveRatesProvider);
}

OrderItem _marketPrice(String id, {double premium = 0}) => fakeOrder(
      id: id,
      fiatCode: 'CUP',
      premium: premium,
      amountSats: BigInt.zero,
    );

void main() {
  group('effectiveRatesProvider', () {
    test('applies the maker premium to every market-price offer', () async {
      final orders = [
        _marketPrice('market-zero'),
        _marketPrice('market-premium', premium: 30),
        _marketPrice('market-discount', premium: -30),
      ];
      final container = _makeContainer(
        orders: orders,
        rate: (code) => switch (code) {
          'CUP' => 1200,
          'USD' => 100000,
          _ => null,
        },
      );

      final rates = await _readRates(container, orders);
      expect(rates['market-zero'], closeTo(0.012, 1e-9));
      expect(rates['market-premium'], closeTo(0.0156, 1e-9));
      expect(rates['market-discount'], closeTo(0.0084, 1e-9));
    });

    test(
      'shares one fiat-rate fetch between offers priced in the same currency',
      () async {
        var fetches = 0;
        final orders = [
          _marketPrice('a'),
          _marketPrice('b'),
        ];
        final container = _makeContainer(
          orders: orders,
          rate: (code) {
            fetches++;
            return switch (code) {
              'CUP' => 1200,
              'USD' => 100000,
              _ => null,
            };
          },
        );

        final rates = await _readRates(container, orders);
        expect(rates, hasLength(2));
        // One fetch per currency in the list, not one per card.
        expect(fetches, 2);
      },
    );

    test('leaves out fixed-sats orders entirely', () async {
      final orders = [
        fakeOrder(id: 'fixed', fiatCode: 'CUP', amountSats: BigInt.from(4000)),
        _marketPrice('market'),
      ];
      final container = _makeContainer(
        orders: orders,
        rate: (code) => switch (code) {
          'CUP' => 1200,
          'USD' => 100000,
          _ => null,
        },
      );

      final rates = await _readRates(container, orders);
      expect(rates, contains('market'));
      expect(rates, isNot(contains('fixed')));
    });

    test(
      'dropped an offer when its currency has no rate, keeps the others',
      () async {
        final orders = [
          fakeOrder(id: 'no-rate', fiatCode: 'ARS', amountSats: BigInt.zero),
          _marketPrice('has-rate'),
        ];
        final container = _makeContainer(
          orders: orders,
          rate: (code) => switch (code) {
            'CUP' => 1200,
            'USD' => 100000,
            _ => null,
          },
        );

        final rates = await _readRates(container, orders);
        expect(rates, contains('has-rate'));
        expect(rates, isNot(contains('no-rate')));
      },
    );

    test('maps empty lists to the empty map', () {
      final container = _makeContainer(orders: [], rate: (_) => null);

      expect(container.read(effectiveRatesProvider), isEmpty);
    });
  });
}