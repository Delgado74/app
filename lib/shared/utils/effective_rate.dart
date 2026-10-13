/// Effective fiat/USD cross rate of a market-price offer after applying the
/// creator's premium or discount.
class EffectiveRate {
  EffectiveRate._();

  /// Returns the effective amount of [currency] per 1 USD that a market-price
  /// offer trades at once [premiumPercent] is applied:
  ///
  /// ```text
  /// effectiveFiatPerBtc = fiatPerBtc × (1 + premium/100)
  /// effectiveFiatPerUsd = effectiveFiatPerBtc / usdPerBtc
  /// ```
  ///
  /// A positive [premiumPercent] is a premium, a negative value is a discount.
  /// [fiatPerBtc] is the market rate of the offer's fiat currency against BTC
  /// and [usdPerBtc] the market rate of USD against BTC.
  ///
  /// Returns null when any input is not a finite positive number or when the
  /// resulting cross rate is not a finite positive number — a missing or
  /// failed rate fetch must never yield a bogus figure.
  static double? fiatPerUsd({
    required double fiatPerBtc,
    required double usdPerBtc,
    required double premiumPercent,
  }) {
    if (!fiatPerBtc.isFinite ||
        !usdPerBtc.isFinite ||
        !premiumPercent.isFinite) {
      return null;
    }
    if (fiatPerBtc <= 0 || usdPerBtc <= 0) return null;
    final effectiveFiatPerBtc = fiatPerBtc * (1 + premiumPercent / 100);
    if (!effectiveFiatPerBtc.isFinite || effectiveFiatPerBtc <= 0) return null;
    final rate = effectiveFiatPerBtc / usdPerBtc;
    if (!rate.isFinite || rate <= 0) return null;
    return rate;
  }
}
