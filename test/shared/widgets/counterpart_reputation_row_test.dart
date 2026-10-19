import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mostro/core/app_theme.dart';
import 'package:mostro/l10n/app_localizations.dart';
import 'package:mostro/l10n/app_localizations_en.dart';
import 'package:mostro/shared/widgets/counterpart_reputation_row.dart';

/// Noon, 2026-01-01 UTC: the row's age is read against this.
final _now = DateTime.utc(2026, 1, 1, 12);

/// The one-row counterpart reputation of the trade screen (8b, 8c): the
/// grade on the avatar, the role, and the trades and age in one line. A
/// counterpart nobody has rated shows `New` rather than a fake 0.0.
void main() {
  final en = AppLocalizationsEn();

  Future<void> pump(
    WidgetTester tester, {
    required double rating,
    required int reviews,
    required DateTime since,
    required bool counterpartIsBuyer,
    Locale locale = const Locale('en'),
  }) async {
    await withClock(
      Clock.fixed(_now),
      () => tester.pumpWidget(
        MaterialApp(
          theme: buildDarkTheme(),
          locale: locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: CounterpartReputationRow(
              rating: rating,
              reviews: reviews,
              since: since,
              counterpartIsBuyer: counterpartIsBuyer,
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('a rated buyer: grade, role and the summary line', (
    tester,
  ) async {
    await pump(
      tester,
      rating: 4.8,
      reviews: 2,
      since: _now.subtract(const Duration(days: 1)),
      counterpartIsBuyer: true,
    );

    expect(find.text('4.8'), findsOneWidget);
    expect(find.text(en.tradeRoleBuyer), findsOneWidget);
    expect(find.text(en.reputationNew), findsNothing);
    expect(find.textContaining(en.reputationTradesCount(2)), findsOneWidget);
    expect(find.textContaining(en.reputationDaysOnMostro(1)), findsOneWidget);
  });

  // The order book shows the same user at 4,97 (DS-L10N-5).
  testWidgets('the grade keeps its second decimal, as the order book does', (
    tester,
  ) async {
    await pump(
      tester,
      rating: 4.97,
      reviews: 687,
      since: DateTime.utc(2022, 5, 19),
      counterpartIsBuyer: true,
      locale: const Locale('es'),
    );

    expect(find.text('4,97'), findsOneWidget);
    expect(find.text('5.0'), findsNothing);
  });

  testWidgets('a seller nobody rated reads New instead of a grade', (
    tester,
  ) async {
    await pump(
      tester,
      rating: 0,
      reviews: 0,
      since: _now.subtract(const Duration(days: 12)),
      counterpartIsBuyer: false,
    );

    expect(find.text(en.reputationNew), findsOneWidget);
    expect(find.text('0.0'), findsNothing);
    expect(find.text(en.tradeRoleSeller), findsOneWidget);
    expect(find.textContaining(en.reputationDaysOnMostro(12)), findsOneWidget);
  });

  test('highlightFigures styles every run of digits and nothing else', () {
    const strong = TextStyle(fontWeight: FontWeight.w500);
    final spans = highlightFigures('2 trades · 1,234 days', strong);

    expect(spans.map((s) => (s as TextSpan).text), [
      '2',
      ' trades · ',
      '1,234',
      ' days',
    ]);
    expect((spans[0] as TextSpan).style, strong);
    expect((spans[1] as TextSpan).style, isNull);
    expect((spans[2] as TextSpan).style, strong);
  });
}
