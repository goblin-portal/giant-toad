import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

/// Flame sprite-sheet adapter that enforces integer frame dimensions while
/// retaining Flame's Sprite and SpriteAnimation types.
class GiantToadPixelAtlas {
  GiantToadPixelAtlas({
    required Image image,
    required int tileWidth,
    required int tileHeight,
  }) : tileWidth = tileWidth,
       tileHeight = tileHeight,
       sheet = SpriteSheet(
         image: image,
         srcSize: Vector2(tileWidth.toDouble(), tileHeight.toDouble()),
       ) {
    if (tileWidth <= 0 || tileHeight <= 0) {
      throw ArgumentError('Pixel atlas tile dimensions must be positive.');
    }
  }

  final int tileWidth;
  final int tileHeight;
  final SpriteSheet sheet;

  Sprite sprite(int row, int column) {
    if (row < 0 || column < 0) {
      throw RangeError('Sprite row and column must be non-negative.');
    }
    return sheet.getSprite(row, column);
  }

  SpriteAnimation animation({
    required int row,
    required int from,
    required int count,
    required double stepTime,
    bool loop = true,
  }) {
    if (row < 0 || from < 0 || count <= 0 || stepTime <= 0) {
      throw ArgumentError(
        'Animation row/from must be non-negative and count/stepTime positive.',
      );
    }
    return sheet.createAnimation(
      row: row,
      from: from,
      to: from + count,
      stepTime: stepTime,
      loop: loop,
    );
  }
}

enum GiantToadSampling {
  /// Integer placement and nearest-neighbor sampling.
  pixelPerfect,

  /// Fractional placement and arbitrary rotation with hard nearest edges.
  crispTransform,

  /// Fractional transforms with interpolated filtering.
  smooth,
}

mixin GiantToadPixelPaint on HasPaint {
  void configureSampling(GiantToadSampling sampling) {
    switch (sampling) {
      case GiantToadSampling.pixelPerfect:
      case GiantToadSampling.crispTransform:
        paint
          ..isAntiAlias = false
          ..filterQuality = FilterQuality.none;
      case GiantToadSampling.smooth:
        paint
          ..isAntiAlias = true
          ..filterQuality = FilterQuality.medium;
    }
  }
}

/// Standard Flame sprite component with nearest-neighbor rendering and optional
/// integer world placement.
class GiantToadPixelSpriteComponent extends SpriteComponent
    with GiantToadPixelPaint {
  GiantToadPixelSpriteComponent({
    super.sprite,
    super.position,
    super.size,
    super.anchor,
    super.angle,
    super.priority,
    super.key,
    GiantToadSampling? sampling,
    bool snapPosition = true,
  }) : sampling =
           sampling ??
           (snapPosition
               ? GiantToadSampling.pixelPerfect
               : GiantToadSampling.crispTransform) {
    configureSampling(this.sampling);
  }

  final GiantToadSampling sampling;
  bool get snapPosition => sampling == GiantToadSampling.pixelPerfect;

  @override
  void render(Canvas canvas) {
    if (!snapPosition) return super.render(canvas);
    final dx = position.x.roundToDouble() - position.x;
    final dy = position.y.roundToDouble() - position.y;
    canvas.save();
    canvas.translate(dx, dy);
    super.render(canvas);
    canvas.restore();
  }
}

/// Standard Flame animation component configured for pixel rendering.
class GiantToadPixelAnimationComponent extends SpriteAnimationComponent
    with GiantToadPixelPaint {
  GiantToadPixelAnimationComponent({
    super.animation,
    super.position,
    super.size,
    super.anchor,
    super.angle,
    super.priority,
    super.key,
    this.sampling = GiantToadSampling.pixelPerfect,
  }) {
    configureSampling(sampling);
  }

  final GiantToadSampling sampling;

  @override
  void render(Canvas canvas) {
    if (sampling != GiantToadSampling.pixelPerfect) {
      return super.render(canvas);
    }
    final dx = position.x.roundToDouble() - position.x;
    final dy = position.y.roundToDouble() - position.y;
    canvas.save();
    canvas.translate(dx, dy);
    super.render(canvas);
    canvas.restore();
  }
}
