import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad_ui.dart';

void main() {
  testWidgets('pixel panel has deterministic nearest-edge geometry', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(96, 64));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: ColoredBox(
          color: Color(0xff101018),
          child: Center(
            child: RepaintBoundary(
              key: Key('golden'),
              child: GiantToadUiThemeScope(
                theme: GiantToadUiTheme(),
                child: GiantToadPixelPanel(
                  padding: EdgeInsets.all(6),
                  child: ColoredBox(
                    color: Color(0xffffd166),
                    child: SizedBox(width: 32, height: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byKey(const Key('golden')),
      matchesGoldenFile('pixel_ui_panel.png'),
    );
  });
}
