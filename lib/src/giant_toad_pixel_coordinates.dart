import 'package:flame/components.dart';

import 'giant_toad_pixel_viewport.dart';
import 'giant_toad_resolution.dart';

/// Pixel-grid coordinate helpers for Giant Toad's logical canvas.
abstract final class GiantToadPixelCoordinates {
  /// Snaps [position] to the nearest logical pixel.
  ///
  /// Supply [output] to avoid allocating a new vector in per-frame code.
  static Vector2 snap(Vector2 position, {Vector2? output}) {
    final snapped = output ?? Vector2.zero();
    snapped.setValues(position.x.roundToDouble(), position.y.roundToDouble());
    return snapped;
  }

  /// Converts a logical-canvas position to a physical game-canvas position.
  ///
  /// Supply [output] to avoid allocating a new vector in per-frame code.
  static Vector2 logicalToCanvas({
    required GiantToadViewportMetrics metrics,
    required Vector2 logicalPosition,
    Vector2? output,
  }) {
    final canvasPosition = output ?? Vector2.zero();
    canvasPosition.setValues(
      metrics.offset.x + logicalPosition.x * metrics.scale,
      metrics.offset.y + logicalPosition.y * metrics.scale,
    );
    return canvasPosition;
  }

  /// Converts a physical game-canvas position to a logical-canvas position.
  ///
  /// Returns `null` when [canvasPosition] falls in the letterbox. Supply
  /// [output] to avoid allocating a new vector when the point is in bounds.
  static Vector2? canvasToLogical({
    required GiantToadResolution resolution,
    required GiantToadViewportMetrics metrics,
    required Vector2 canvasPosition,
    Vector2? output,
  }) {
    final x = (canvasPosition.x - metrics.offset.x) / metrics.scale;
    final y = (canvasPosition.y - metrics.offset.y) / metrics.scale;
    if (x < 0 || y < 0 || x > resolution.width || y > resolution.height) {
      return null;
    }

    final logicalPosition = output ?? Vector2.zero();
    logicalPosition.setValues(x, y);
    return logicalPosition;
  }
}
