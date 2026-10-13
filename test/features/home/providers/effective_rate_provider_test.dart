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

void main() {
  group('effectiveRatesProvider', () {
    test('applies the maker premium to every market-price offer', () {
      final container = _makeContainer(
        orders: [
          fakeOrder(
            id: 'market-zero',
            fiatCode: 'CUP',
            premium: 0,
            amountSats: BigInt.zero,
          ),
          fakeOrder(
            id: 'market-premium',
            fiatCode: 'CUP',
            premium: 30,
            amountSats: BigInt.zero,
          ),
          fakeOrder(
            id: 'market-discount',
            fiatCode: 'CUP',
            premium: -30,
            amountSats: BigInt.zero,
          ),
        ],
        rate: (code) => switch (code) {
          'CUP' => 1200,
          'USD' => 100000,
          _ => null,
        },
      );

      final rates = container.read(effectiveRatesProvider);
      expect(rates['market-zero'], closeTo(0.012, 1e-9));
      expect(rates['market-premium'], closeTo(0.0156, 1e-9));
      expect(rates['market-discount'], closeTo(0.0084, 1e-9));
    });

    test(
      'shares one fiat-rate fetch between offers priced in the same currency',
      () {
        final container = _makeContainer(
          orders: [
            fakeOrder(id: 'a', fiatCode: 'CUP', amountSats: BigInt.zero),
            fakeOrder(id: 'b', fiatCode: 'CUP', amountSats: BigInt.zero),
          ],
          rate: (code) => switch (code) {
            'CUP' => 1200,
            'USD' => 100000,
            _ => null,
          },
        );

        expect(container.read(effectiveRatesProvider).length, 2);
      },
    );

    test('leaves out fixed-sats orders entirely', () {
      final container = _makeContainer(
        orders: [
          fakeOrder(
            id: 'fixed',
            fiatCode: 'CUP',
            amountSats: BigInt.from(4000),
          ),
          fakeOrder(id: 'market', fiatCode: 'CUP', amountSats: BigInt.zero),
        ],
        rate: (code) => switch (code) {
          'CUP' => 1200,
          'USD' => 100000,
          _ => null,
        },
      );

      final rates = container.read(effectiveRatesProvider);
      expect(rates, contains('market'));
      expect(rates, isNot(contains('fixed')));
    });

    test(
      'dropped an offer when its currency has no rate, keeps the others',
      () {
        final container = _makeContainer(
          orders: [
            fakeOrder(id: 'no-rate', fiatCode: 'ARS', amountSats: BigInt.zero),
            fakeOrder(id: 'has-rate', fiatCode: 'CUP', amountSats: BigInt.zero),
          ],
          rate: (code) => switch (code) {
            'CUP' => 1200,
            'USD' => 100000,
            _ => null,
          },
        );

        final rates = container.read(effectiveRatesProvider);
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
