import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mostro/shared/widgets/mostro_qr.dart';
import 'package:qr/qr.dart';
import 'package:zxing2/qrcode.dart';

/// A BOLT 11 invoice of [length] characters: the bech32 alphabet after a
/// mainnet prefix, from a fixed seed so every run draws the same code.
String _invoice(int length, {int seed = 1}) {
  const alphabet = 'qpzry9x8gf2tvdw0s3jn54khce6mua7l';
  final random = Random(seed);
  const prefix = 'lnbc2520n1p';
  return prefix +
      String.fromCharCodes([
        for (var i = prefix.length; i < length; i++)
          alphabet.codeUnitAt(random.nextInt(alphabet.length)),
      ]);
}

/// A Cashu token: base64url, so mixed case and never upper-cased.
String _token(int length) {
  const alphabet =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_';
  final random = Random(7);
  final body = String.fromCharCodes([
    for (var i = 6; i < length; i++)
      alphabet.codeUnitAt(random.nextInt(alphabet.length)),
  ]);
  return 'cashuB$body';
}

int _byteModules(String data, int level) =>
    QrImage(QrCode.fromData(data: data, errorCorrectLevel: level)).moduleCount;

/// The worst centre a node can have: a black disc over the whole logo box.
Widget _blackDisc(double side) => const DecoratedBox(
  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
);

/// Renders [qr] at [pixelRatio] and decodes it as a phone's scanner would.
Future<String> _scan(WidgetTester tester, Widget qr, double pixelRatio) async {
  final key = GlobalKey();
  await tester.pumpWidget(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: RepaintBoundary(key: key, child: qr)),
    ),
  );
  final boundary =
      key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  final text = await tester.runAsync(() async {
    final image = await boundary.toImage(pixelRatio: pixelRatio);
    final rgba = (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    final pixels = Int32List(image.width * image.height);
    for (var i = 0; i < pixels.length; i++) {
      final a = rgba.getUint8(i * 4 + 3);
      // Over white: the card's rounded corners are transparent.
      int over(int c) => (c * a + 255 * (255 - a)) ~/ 255;
      pixels[i] =
          over(rgba.getUint8(i * 4)) << 16 |
          over(rgba.getUint8(i * 4 + 1)) << 8 |
          over(rgba.getUint8(i * 4 + 2));
    }
    final source = RGBLuminanceSource(image.width, image.height, pixels);
    return QRCodeReader().decode(BinaryBitmap(HybridBinarizer(source))).text;
  });
  return text!;
}

void main() {
  group('layout', () {
    test(
      'an invoice is upper-cased: at level Q it stays near its old size',
      () {
        final invoice = _invoice(400);
        final layout = MostroQrLayout.of(invoice, withLogo: true);
        expect(layout.errorCorrectLevel, QrErrorCorrectLevel.Q);
        // The plain QR was byte mode at level L; byte mode at level H, the
        // website's, would be far denser.
        expect(
          layout.moduleCount,
          lessThanOrEqualTo(_byteModules(invoice, QrErrorCorrectLevel.L) + 8),
        );
        expect(
          layout.moduleCount,
          lessThan(_byteModules(invoice, QrErrorCorrectLevel.H)),
        );
      },
    );

    test('the cleared centre is a quarter of the side, odd, and dotless', () {
      final layout = MostroQrLayout.of(_invoice(400), withLogo: true);
      final n = layout.moduleCount;
      expect(layout.clearedModules.isOdd, isTrue);
      expect(layout.clearedModules, closeTo(n / 4, 1));
      final start = (n - layout.clearedModules) ~/ 2;
      // Centred: as many modules before it as after it.
      expect(n - start - layout.clearedModules, start);
      for (var y = 0; y < n; y++) {
        for (var x = 0; x < n; x++) {
          if (layout.inCentre(x, y)) expect(layout.isDot(x, y), isFalse);
        }
      }
      expect(layout.logoSide, layout.clearedModules - 1.4);
    });

    test('the finder eyes are drawn as eyes, never as dots', () {
      final layout = MostroQrLayout.of(_invoice(300), withLogo: true);
      final far = layout.moduleCount - 7;
      for (final (x0, y0) in [(0, 0), (far, 0), (0, far)]) {
        for (var y = y0; y < y0 + 7; y++) {
          for (var x = x0; x < x0 + 7; x++) {
            expect(layout.isDot(x, y), isFalse, reason: '($x, $y)');
          }
        }
      }
    });

    test('without a logo: level L and nothing cleared', () {
      final token = _token(600);
      final layout = MostroQrLayout.of(token, withLogo: false);
      expect(layout.errorCorrectLevel, QrErrorCorrectLevel.L);
      expect(layout.hasLogo, isFalse);
      expect(layout.logoSide, 0);
      // Mixed case is never upper-cased: the same code as the plain QR's.
      expect(layout.moduleCount, _byteModules(token, QrErrorCorrectLevel.L));
    });

    test('only an all-lower or all-upper invoice is upper-cased', () {
      // Mixed case is not bech32: upper-casing it would change what it says.
      const mixed =
          'lnurl1Dp68gurn8ghj7mrww4exctnxd9shg6npvchxxmmd9akxuatjd3cz7';
      final layout = MostroQrLayout.of(mixed, withLogo: true);
      expect(layout.moduleCount, _byteModules(mixed, QrErrorCorrectLevel.Q));
    });

    test('a code too small to clear its centre keeps it', () {
      // Version 1: a 7-module centre would start beside the format
      // information.
      final layout = MostroQrLayout.of('lnbc1', withLogo: true);
      expect(layout.moduleCount, 21);
      expect(layout.hasLogo, isFalse);
    });

    test('data too long to give up its centre is laid out without a logo', () {
      // Fits level L in byte mode (2 953 bytes), not level Q (1 663).
      final layout = MostroQrLayout.of('x' * 2000, withLogo: true);
      expect(layout.hasLogo, isFalse);
      expect(layout.errorCorrectLevel, QrErrorCorrectLevel.L);
    });

    test('fits: what a QR can carry, and no more', () {
      expect(MostroQr.fits('x' * 2000), isTrue);
      expect(MostroQr.fits('x' * 3000), isFalse);
    });
  });

  group('scans', () {
    // The sizes the app draws: the hold invoice (168), the bond (150) and the
    // Cashu token (200); phone screens are 2x to 3x.
    for (final pixelRatio in [2.0, 3.0]) {
      for (final length in [300, 450, 650]) {
        testWidgets('a $length-character hold invoice with a logo, '
            '${pixelRatio}x', (tester) async {
          final invoice = _invoice(length, seed: length);
          final text = await _scan(
            tester,
            MostroQr(data: invoice, size: 168, logo: _blackDisc),
            pixelRatio,
          );
          expect(text, invoice.toUpperCase());
        });
      }

      testWidgets('a bond invoice with a logo, ${pixelRatio}x', (tester) async {
        final invoice = _invoice(320, seed: 3);
        final text = await _scan(
          tester,
          MostroQr(data: invoice, size: 150, logo: _blackDisc),
          pixelRatio,
        );
        expect(text, invoice.toUpperCase());
      });

      testWidgets('a Cashu token without a logo, ${pixelRatio}x', (
        tester,
      ) async {
        final token = _token(600);
        final text = await _scan(
          tester,
          MostroQr(data: token, size: 200),
          pixelRatio,
        );
        expect(text, token);
      });
    }
  });

  group('widget', () {
    testWidgets('the logo gets the side the layout leaves it', (tester) async {
      final invoice = _invoice(400);
      double? side;
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(
            child: MostroQr(
              data: invoice,
              size: 168,
              logo: (s) {
                side = s;
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );
      final layout = MostroQrLayout.of(invoice, withLogo: true);
      expect(side, closeTo(layout.logoSide * 168 / layout.moduleCount, 1e-9));
      // Big enough to tell a node's picture apart.
      expect(side, greaterThan(32));
      expect(
        tester.getSize(find.byType(MostroQr)),
        const Size.square(168 + 2 * MostroQr.quietZone),
      );
    });

    testWidgets('reads as an image with its label', (tester) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(
            child: MostroQr(
              data: _invoice(300),
              size: 150,
              logo: (_) => const Text('M'),
              semanticsLabel: 'Invoice QR',
            ),
          ),
        ),
      );
      expect(find.bySemanticsLabel('Invoice QR'), findsOneWidget);
      // The centre is part of the picture, not a text of its own.
      expect(find.bySemanticsLabel('M'), findsNothing);
      handle.dispose();
    });
  });
}
