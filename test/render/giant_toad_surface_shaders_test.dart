import 'dart:ui' as ui;

import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('loads and renders the packaged lava surface shader', () async {
    final lava = await GiantToadLavaSurfaceShader.load();
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    lava.draw(
      canvas,
      const ui.Rect.fromLTWH(0, 0, 32, 32),
      time: 1.25,
      intensity: 0.8,
      speed: 1.4,
    );
    final image = await recorder.endRecording().toImage(32, 32);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
    expect(bytes, isNotNull);
    var alpha = 0;
    for (var index = 3; index < bytes!.lengthInBytes; index += 4) {
      alpha += bytes.getUint8(index);
    }
    expect(alpha, greaterThan(0));
  });

  test(
    'lava overlay preserves dark tile colors more than source-over',
    () async {
      final lava = await GiantToadLavaSurfaceShader.load();

      Future<int> renderRed(ui.BlendMode blendMode) async {
        final recorder = ui.PictureRecorder();
        final canvas = ui.Canvas(recorder)
          ..drawRect(
            const ui.Rect.fromLTWH(0, 0, 32, 32),
            ui.Paint()..color = const ui.Color(0xff201008),
          );
        lava.draw(
          canvas,
          const ui.Rect.fromLTWH(0, 0, 32, 32),
          time: 1.25,
          intensity: 0.8,
          speed: 1.4,
          blendMode: blendMode,
        );
        final image = await recorder.endRecording().toImage(32, 32);
        final bytes = await image.toByteData(
          format: ui.ImageByteFormat.rawRgba,
        );
        var red = 0;
        for (var index = 0; index < bytes!.lengthInBytes; index += 4) {
          red += bytes.getUint8(index);
        }
        return red;
      }

      final overlayRed = await renderRed(ui.BlendMode.overlay);
      final sourceOverRed = await renderRed(ui.BlendMode.srcOver);
      expect(overlayRed, lessThan(sourceOverRed));
    },
  );

  test('loads and renders water and shoreline shaders', () async {
    final water = await GiantToadWaterSurfaceShader.load();
    final shore = await GiantToadShorelineFoamShader.load();
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    water.draw(
      canvas,
      const ui.Rect.fromLTWH(0, 0, 32, 32),
      time: 2,
      cellX: 3,
      cellY: -2,
    );
    shore.draw(
      canvas,
      const ui.Rect.fromLTWH(0, 0, 32, 32),
      time: 2,
      edgeMask: 15,
      cellX: 3,
      cellY: -2,
    );
    final image = await recorder.endRecording().toImage(32, 32);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
    expect(bytes, isNotNull);
    var alpha = 0;
    for (var index = 3; index < bytes!.lengthInBytes; index += 4) {
      alpha += bytes.getUint8(index);
    }
    expect(alpha, greaterThan(0));
  });

  test('loads and renders world-space cloud shadows', () async {
    final clouds = await GiantToadCloudShadowShader.load();
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    clouds.draw(
      canvas,
      const ui.Rect.fromLTWH(0, 0, 256, 192),
      time: 8,
      cameraOffset: const ui.Offset(24, -16),
      zoom: 1.5,
      density: 1,
      opacity: .2,
    );
    final image = await recorder.endRecording().toImage(256, 192);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
    expect(bytes, isNotNull);
    var alpha = 0;
    for (var index = 3; index < bytes!.lengthInBytes; index += 4) {
      alpha += bytes.getUint8(index);
    }
    expect(alpha, greaterThan(0));
  });
}
