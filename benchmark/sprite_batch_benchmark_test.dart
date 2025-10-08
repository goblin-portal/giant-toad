import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('sprite batch updates and renders large deterministic workloads', () {
    final image = _makeSpriteSheet();
    addTearDown(image.dispose);

    for (final workload in const [
      (sprites: 10_000, frames: 100),
      (sprites: 100_000, frames: 20),
    ]) {
      final batch = _SpriteBatch(workload.sprites);
      final recorder = PictureRecorder();
      final canvas = Canvas(recorder)
        ..clipRect(const Rect.fromLTWH(0, 0, 800, 600));

      batch.update();
      batch.render(canvas, image);
      final elapsed = _measure(workload.frames, () {
        batch.update();
        batch.render(canvas, image);
      });

      expect(batch.count, workload.sprites);
      expect(batch.transforms.length, workload.sprites * 4);
      expect(batch.xs.every((value) => value >= 0 && value <= 800), isTrue);
      expect(batch.ys.every((value) => value >= 0 && value <= 600), isTrue);
      debugPrint(
        'sprite batch benchmark: ${workload.sprites} sprites, '
        '${workload.frames} frames; total=${elapsed.inMicroseconds}us, '
        'average=${elapsed.inMicroseconds ~/ workload.frames}us/frame',
      );

      recorder.endRecording().dispose();
    }
  });
}

class _SpriteBatch {
  _SpriteBatch(this.count)
    : xs = Float32List(count),
      ys = Float32List(count),
      vxs = Float32List(count),
      vys = Float32List(count),
      transforms = Float32List(count * 4),
      sourceRects = Float32List(count * 4) {
    final random = math.Random(1);
    for (var i = 0; i < count; i++) {
      xs[i] = random.nextDouble() * 800;
      ys[i] = random.nextDouble() * 600;
      vxs[i] = random.nextDouble() * 10 - 5;
      vys[i] = random.nextDouble() * 10 - 5;
      final offset = i * 4;
      final sourceX = (i % 4) * 16.0;
      sourceRects[offset] = sourceX;
      sourceRects[offset + 1] = 0;
      sourceRects[offset + 2] = sourceX + 16;
      sourceRects[offset + 3] = 16;
    }
    visibleTransforms = Float32List.sublistView(transforms);
    visibleSourceRects = Float32List.sublistView(sourceRects);
  }

  static const gravity = 0.75;

  final int count;
  final Float32List xs;
  final Float32List ys;
  final Float32List vxs;
  final Float32List vys;
  final Float32List transforms;
  final Float32List sourceRects;
  late final Float32List visibleTransforms;
  late final Float32List visibleSourceRects;
  final paint = Paint()
    ..isAntiAlias = false
    ..filterQuality = FilterQuality.none;

  void update() {
    for (var i = 0; i < count; i++) {
      var x = xs[i] + vxs[i];
      var y = ys[i] + vys[i];
      var vx = vxs[i];
      var vy = vys[i] + gravity;
      if (x > 800 || x < 0) {
        x = x.clamp(0, 800);
        vx = -vx;
      }
      if (y > 600) {
        y = 600;
        vy = -vy * 0.85;
      } else if (y < 0) {
        y = 0;
        vy = 0;
      }
      xs[i] = x;
      ys[i] = y;
      vxs[i] = vx;
      vys[i] = vy;

      final offset = i * 4;
      transforms[offset] = 1;
      transforms[offset + 1] = 0;
      transforms[offset + 2] = x - 8 - (i % 4) * 16;
      transforms[offset + 3] = y - 16;
    }
  }

  void render(Canvas canvas, Image image) {
    canvas.drawRawAtlas(
      image,
      visibleTransforms,
      visibleSourceRects,
      null,
      null,
      const Rect.fromLTWH(-8, -16, 816, 632),
      paint,
    );
  }
}

Image _makeSpriteSheet() {
  final recorder = PictureRecorder();
  final canvas = Canvas(recorder);
  final paint = Paint()..isAntiAlias = false;
  for (var frame = 0; frame < 4; frame++) {
    paint.color = Color.fromARGB(255, 40 + frame * 40, 120, 60);
    canvas.drawRect(Rect.fromLTWH(frame * 16.0, 0, 16, 16), paint);
  }
  final picture = recorder.endRecording();
  final image = picture.toImageSync(64, 16);
  picture.dispose();
  return image;
}

Duration _measure(int frames, void Function() frame) {
  final stopwatch = Stopwatch()..start();
  for (var i = 0; i < frames; i++) {
    frame();
  }
  stopwatch.stop();
  return stopwatch.elapsed;
}
