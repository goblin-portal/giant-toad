import 'dart:math' as math;
import 'package:flame/camera.dart';
import 'package:flame/extensions.dart';

import 'giant_toad_resolution.dart';

/// Controls whether the logical canvas is fixed or reveals extra world height.
enum GiantToadViewportMode {
  /// Keeps both logical dimensions fixed and letterboxes as needed.
  fixed,

  /// Divides both window dimensions by a fixed integer pixel scale, revealing
  /// more or less logical space as the window changes.
  expand,

  /// Keeps logical width fixed and derives visible logical height from the
  /// available canvas height. Retained for games that prefer width anchoring.
  expandWidth,
}

/// The calculated placement of a logical pixel canvas within a game canvas.
class GiantToadViewportMetrics {
  const GiantToadViewportMetrics._({
    required this.scale,
    required this.offset,
    required this.size,
  });

  /// Calculates the largest integer scale that fits [resolution] in
  /// [canvasSize], centering the remaining space as letterboxing.
  ///
  /// When the canvas is smaller than the logical resolution, the canvas is
  /// scaled down just enough to remain visible. Integer upscaling resumes as
  /// soon as the canvas can fit the logical resolution at 1x.
  factory GiantToadViewportMetrics.fit({
    required GiantToadResolution resolution,
    required Vector2 canvasSize,
  }) {
    final rawScale = math.min(
      canvasSize.x / resolution.width,
      canvasSize.y / resolution.height,
    );
    final scale = rawScale >= 1 ? rawScale.floorToDouble() : rawScale;
    final size = Vector2(resolution.width * scale, resolution.height * scale);

    return GiantToadViewportMetrics._(
      scale: scale,
      size: size,
      offset: Vector2((canvasSize.x - size.x) / 2, (canvasSize.y - size.y) / 2),
    );
  }

  /// Calculates a viewport that preserves logical width and expands vertically.
  factory GiantToadViewportMetrics.expandWidth({
    required GiantToadResolution resolution,
    required Vector2 canvasSize,
  }) {
    final rawScale = canvasSize.x / resolution.width;
    final scale = rawScale >= 1 ? rawScale.floorToDouble() : rawScale;
    final size = Vector2(resolution.width * scale, canvasSize.y);
    return GiantToadViewportMetrics._(
      scale: scale,
      size: size,
      offset: Vector2((canvasSize.x - size.x) / 2, 0),
    );
  }

  /// Calculates expansion at an authored integer scale.
  factory GiantToadViewportMetrics.expand({
    required Vector2 canvasSize,
    required int pixelScale,
  }) {
    if (pixelScale < 1) {
      throw ArgumentError.value(pixelScale, 'pixelScale', 'must be positive');
    }
    return GiantToadViewportMetrics._(
      scale: pixelScale.toDouble(),
      size: canvasSize.clone(),
      offset: Vector2.zero(),
    );
  }

  /// The uniform scale applied to the logical canvas.
  final double scale;

  /// The top-left letterbox offset in physical canvas coordinates.
  final Vector2 offset;

  /// The physical size of the displayed logical canvas.
  final Vector2 size;
}

/// A fixed-resolution viewport that uses integer pixel scaling when possible.
///
/// Unlike Flame's [FixedResolutionViewport], this viewport intentionally leaves
/// unused canvas space as letterboxing rather than applying a fractional upscale.
class GiantToadPixelViewport extends Viewport {
  GiantToadPixelViewport({
    required this.resolution,
    this.mode = GiantToadViewportMode.fixed,
    this.pixelScale = 2,
    super.children,
  }) : assert(pixelScale > 0);

  /// The unscaled logical canvas resolution.
  final GiantToadResolution resolution;

  /// Determines whether this viewport letterboxes or exposes extra space.
  final GiantToadViewportMode mode;

  /// Integer presentation scale used by [GiantToadViewportMode.expand].
  final int pixelScale;

  /// The current logical-canvas placement within the game canvas.
  late GiantToadViewportMetrics metrics;

  Rect _clipRect = Rect.zero;

  @override
  Vector2 get virtualSize =>
      _virtualSizeOrNull ?? Vector2(resolution.width, resolution.height);
  Vector2? _virtualSizeOrNull;

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    metrics = switch (mode) {
      GiantToadViewportMode.fixed => GiantToadViewportMetrics.fit(
        resolution: resolution,
        canvasSize: size,
      ),
      GiantToadViewportMode.expand => GiantToadViewportMetrics.expand(
        canvasSize: size,
        pixelScale: pixelScale,
      ),
      GiantToadViewportMode.expandWidth => GiantToadViewportMetrics.expandWidth(
        resolution: resolution,
        canvasSize: size,
      ),
    };
    _virtualSizeOrNull = switch (mode) {
      GiantToadViewportMode.fixed => Vector2(
        resolution.width,
        resolution.height,
      ),
      GiantToadViewportMode.expand => Vector2(
        size.x / metrics.scale,
        size.y / metrics.scale,
      ),
      GiantToadViewportMode.expandWidth => Vector2(
        resolution.width,
        size.y / metrics.scale,
      ),
    };
    this.size = metrics.size;
    position = metrics.offset;
  }

  @override
  void clip(Canvas canvas) => canvas.clipRect(_clipRect, doAntiAlias: false);

  @override
  bool containsLocalPoint(Vector2 point) {
    final x = point.x;
    final y = point.y;
    return x >= 0 && y >= 0 && x <= size.x && y <= size.y;
  }

  @override
  void onViewportResize() {
    _clipRect = Rect.fromLTWH(0, 0, size.x, size.y);
  }

  @override
  Vector2 globalToLocal(Vector2 point, {Vector2? output}) {
    final viewportPoint = super.globalToLocal(point, output: output);
    viewportPoint.scale(1 / metrics.scale);
    return viewportPoint;
  }

  @override
  Vector2 localToGlobal(Vector2 point, {Vector2? output}) {
    final viewportPoint = output ?? Vector2.zero();
    viewportPoint
      ..setFrom(point)
      ..scale(metrics.scale);
    return super.localToGlobal(viewportPoint, output: viewportPoint);
  }

  @override
  void transformCanvas(Canvas canvas) {
    canvas.translate(size.x / 2, size.y / 2);
    canvas.scale(metrics.scale);
    canvas.translate(
      -(size.x / 2) / metrics.scale,
      -(size.y / 2) / metrics.scale,
    );
  }
}
