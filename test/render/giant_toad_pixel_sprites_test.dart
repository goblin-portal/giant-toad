import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('pixel atlas delegates sprites and animations to Flame', () async {
    final recorder = PictureRecorder();
    Canvas(recorder).drawRect(
      const Rect.fromLTWH(0, 0, 32, 16),
      Paint()..color = const Color(0xffffffff),
    );
    final image = await recorder.endRecording().toImage(32, 16);
    addTearDown(image.dispose);
    final atlas = GiantToadPixelAtlas(
      image: image,
      tileWidth: 16,
      tileHeight: 16,
    );

    expect(atlas.sprite(0, 1).srcPosition.x, 16);
    expect(
      atlas.animation(row: 0, from: 0, count: 2, stepTime: 0.1).frames,
      hasLength(2),
    );
  });

  test('pixel components disable filtering and anti-aliasing', () {
    final sprite = GiantToadPixelSpriteComponent();
    final animation = GiantToadPixelAnimationComponent();
    expect(sprite.paint.filterQuality, FilterQuality.none);
    expect(sprite.paint.isAntiAlias, isFalse);
    expect(animation.paint.filterQuality, FilterQuality.none);
  });

  test('crisp transforms allow rotation without blur or position snapping', () {
    final sprite = GiantToadPixelSpriteComponent(
      position: Vector2(4.5, 7.25),
      angle: 0.37,
      sampling: GiantToadSampling.crispTransform,
    );
    expect(sprite.snapPosition, isFalse);
    expect(sprite.angle, 0.37);
    expect(sprite.paint.filterQuality, FilterQuality.none);
    expect(sprite.paint.isAntiAlias, isFalse);
  });

  test('smooth sampling opts into interpolation', () {
    final sprite = GiantToadPixelSpriteComponent(
      sampling: GiantToadSampling.smooth,
    );
    expect(sprite.paint.filterQuality, FilterQuality.medium);
    expect(sprite.paint.isAntiAlias, isTrue);
  });
}
