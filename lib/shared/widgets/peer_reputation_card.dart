import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mostro/core/app_theme.dart';
import 'package:mostro/l10n/app_localizations.dart';
import 'package:mostro/shared/utils/rating_format.dart';

/// A single reputation metric (value + label), optionally with a leading icon.
///
/// Shared between the creator-reputation card on the take-order screen and the
/// counterpart-reputation card ([PeerReputationCard]) so both sides of a trade
/// render identically.
class ReputationStat extends StatelessWidget {
  const ReputationStat({
    super.key,
    required this.value,
    required this.label,
    this.icon,
    this.iconColor,
  });

  final String value;
  final String label;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final book = OrderBookPalette.of(context);
    return Column(
      children: [
        // A third of a 320 dp card cannot hold the star and a two-decimal
        // rating (`4.97`) or a grouped count (`1.323`) at 2× text: the value
        // shrinks to fit rather than overflow, and never wraps (DS-TYP-7).
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 16, color: iconColor),
                const SizedBox(width: AppSpacing.xs),
              ],
              Text(
                value,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        Text(label, style: TextStyle(color: book.textSecondary, fontSize: 11)),
      ],
    );
  }
}

/// Counterpart (taker) reputation snapshot, shown where the maker decides
/// whether to continue: the pay/add-invoice screens and the trade detail
/// (issue #305). The daemon sends this as a follow-up Peer DM once its order
/// is taken; the Rust side persists it onto the trade.
///
/// The counterpart's role is derived from the user's own — paying the hold
/// invoice means the taker is the buyer; adding an invoice means the taker is
/// the seller — and passed in as [counterpartIsBuyer] so the title reads
/// "Buyer reputation" / "Seller reputation".
///
/// All-zeros is ambiguous on the wire — a brand-new user and a full-privacy
/// taker are indistinguishable — so the raw numbers are shown as-is.
class PeerReputationCard extends StatelessWidget {
  const PeerReputationCard({
    super.key,
    required this.rating,
    required this.reviews,
    required this.days,
    required this.counterpartIsBuyer,
  });

  final double rating;
  final int reviews;
  final int days;
  final bool counterpartIsBuyer;

  @override
  Widget build(BuildContext context) {
    final book = OrderBookPalette.of(context);
    final l10n = AppLocalizations.of(context);
    final locale = l10n.localeName;
    // Grouped as the order book groups them (DS-L10N-5): `1,323`.
    final count = NumberFormat.decimalPattern(locale);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: book.surface,
        border: Border.all(color: book.border),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            counterpartIsBuyer ? l10n.buyerReputation : l10n.sellerReputation,
            style: TextStyle(color: book.textSecondary, fontSize: 12),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(
                child: ReputationStat(
                  value: formatRating(rating, locale),
                  label: l10n.ratingStatLabel,
                  icon: Icons.star,
                  iconColor: book.yellow,
                ),
              ),
              Expanded(
                child: ReputationStat(
                  value: count.format(reviews),
                  label: l10n.tradesStatLabel,
                ),
              ),
              Expanded(
                child: ReputationStat(
                  value: count.format(days),
                  label: l10n.daysActiveStatLabel,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
