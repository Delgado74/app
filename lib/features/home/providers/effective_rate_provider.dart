import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mostro/features/home/providers/home_order_providers.dart';
import 'package:mostro/features/order/providers/exchange_rate_provider.dart';
import 'package:mostro/shared/utils/effective_rate.dart';

/// Effective fiat/USD cross rate of each visible market-price offer, after the
/// maker's premium or discount.
///
/// Computed once per visible (filtered) list rather than in each card, so a
/// relaying order book does not build one rate subscription per card: the
/// fiat rate is fetched once per currency in the list and shared by every
/// offer priced in it.
///
/// Only market-price offers ([OrderItem.hasFixedSats] false) take part;
/// fixed-sats cards never subscribe to rate providers. An order with no
/// computable rate — the node has no rate for its currency, the
/// `mostro-rates` event is missing or expired, or a fetch fails — is simply
/// left out of the map, and its card keeps the plain "Market price" caption.
final effectiveRatesProvider = Provider.autoDispose<Map<String, double>>((ref) {
  final orders = ref.watch(filteredOrdersProvider);
  final marketOrders = [
    for (final order in orders)
      if (!order.hasFixedSats) order,
  ];
  if (marketOrders.isEmpty) return const {};

  final cached = <String, double?>{};
  for (final order in marketOrders) {
    cached.putIfAbsent(
      order.fiatCode,
      () => ref.watch(exchangeRateProvider(order.fiatCode)).valueOrNull,
    );
  }
  // An offer priced in USD already cached the USD rate above.
  final usdPerBtc =
      cached['USD'] ?? ref.watch(exchangeRateProvider('USD')).valueOrNull;

  final effective = <String, double>{};
  for (final order in marketOrders) {
    final rate = EffectiveRate.fiatPerUsd(
      fiatPerBtc: cached[order.fiatCode] ?? 0,
      usdPerBtc: usdPerBtc ?? 0,
      premiumPercent: order.premium,
    );
    if (rate != null) effective[order.id] = rate;
  }
  return effective;
});
