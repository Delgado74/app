import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mostro/core/app_theme.dart';
import 'package:mostro/l10n/app_localizations.dart';
import 'package:mostro/shared/widgets/peer_reputation_card.dart';

/// The counterpart reputation card (issue #305) is where the maker learns who
/// took their order. Its contract: it names the taker's role (derived from the
/// user's own) and shows the raw numbers — including all-zeros, since a
/// brand-new user and a full-privacy taker are indistinguishable on the wire.
void main() {
  Future<void> pump(
    WidgetTester tester, {
    required double rating,
    required int reviews,
    required int days,
    required bool counterpartIsBuyer,
    Locale locale = const Locale('en'),
    double textScale = 1,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: buildDarkTheme(),
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!,
        ),
        home: Scaffold(
          body: PeerReputationCard(
            rating: rating,
            reviews: reviews,
            days: days,
            counterpartIsBuyer: counterpartIsBuyer,
          ),
        ),
      ),
    );
  }

  testWidgets('titles the card for the buyer when the taker is the buyer',
      (tester) async {
    await pump(tester,
        rating: 4.375, reviews: 4, days: 64, counterpartIsBuyer: true);

    expect(find.text('Buyer reputation'), findsOneWidget);
    expect(find.text('Seller reputation'), findsNothing);
  });

  testWidgets('titles the card for the seller when the taker is the seller',
      (tester) async {
    await pump(tester,
        rating: 4.375, reviews: 4, days: 64, counterpartIsBuyer: false);

    expect(find.text('Seller reputation'), findsOneWidget);
    expect(find.text('Buyer reputation'), findsNothing);
  });

  testWidgets('shows the rating as the order book does, with reviews and days',
      (tester) async {
    await pump(tester,
        rating: 4.375, reviews: 4, days: 64, counterpartIsBuyer: true);

    expect(find.text('4.38'), findsOneWidget); // two decimals (DS-L10N-5)
    expect(find.text('4'), findsOneWidget); // reviews
    expect(find.text('64'), findsOneWidget); // days
  });

  testWidgets('formats the rating for the locale', (tester) async {
    await pump(tester,
        rating: 4.97,
        reviews: 4,
        days: 64,
        counterpartIsBuyer: true,
        locale: const Locale('es'));

    expect(find.text('4,97'), findsOneWidget);
  });

  // DS-A11Y-4: the pay and add-invoice screens pad the card by AppSpacing.lg,
  // so on a 320 dp phone it is 288 wide and each stat gets a third of what is
  // left. At 2× text a two-decimal rating beside its star is wider than that.
  testWidgets('fits a two-decimal rating at 2x text on a 320 dp phone',
      (tester) async {
    tester.view.physicalSize = const Size(320 - 2 * AppSpacing.lg, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await pump(tester,
        rating: 4.97,
        reviews: 1323,
        days: 1323,
        counterpartIsBuyer: true,
        locale: const Locale('de'),
        textScale: 2);

    expect(tester.takeException(), isNull);
    expect(find.text('4,97'), findsOneWidget);
  });

  testWidgets('shows all-zeros verbatim rather than hiding a new/private taker',
      (tester) async {
    await pump(tester,
        rating: 0.0, reviews: 0, days: 0, counterpartIsBuyer: true);

    // Rating, reviews and days all read 0: nothing is left blank.
    expect(find.text('0'), findsNWidgets(3));
  });
}
