import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';
import 'package:giant_toad/giant_toad_ui.dart';

void main() {
  testWidgets(
    'pixel overlay uses the same integer scale and letterbox as canvas',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(800, 600));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: GiantToadPixelOverlay(
            resolution: GiantToadResolution(width: 320, height: 180),
            child: const SizedBox.expand(key: Key('logical-overlay')),
          ),
        ),
      );

      final transform = tester.widget<Transform>(find.byType(Transform));
      expect(transform.transform.storage[0], 2);
      expect(transform.filterQuality, FilterQuality.none);
      final rect = tester.getRect(find.byKey(const Key('logical-overlay')));
      expect(rect, const Rect.fromLTWH(80, 120, 640, 360));
    },
  );

  testWidgets('native text is laid out at final display size', (tester) async {
    await tester.binding.setSurfaceSize(const Size(800, 600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: GiantToadNativeTextOverlay(
          resolution: GiantToadResolution(width: 320, height: 180),
          text: const [
            GiantToadNativeText(text: 'Sharp', x: 8, y: 12, fontSize: 10),
          ],
        ),
      ),
    );

    final text = tester.widget<Text>(find.text('Sharp'));
    expect(text.style!.fontSize, 20);
    expect(tester.getTopLeft(find.text('Sharp')), const Offset(96, 144));
    expect(find.byType(Transform), findsNothing);
  });
}
