import 'package:flame/components.dart';

import 'giant_toad_pixel_viewport.dart';

/// Editor-safe camera pan, zoom, and coordinate conversion helpers.
class GiantToadEditorCamera {
  GiantToadEditorCamera(this.camera);

  final CameraComponent camera;

  /// Pans the world by a physical canvas delta, accounting for camera zoom.
  void panBy(Vector2 canvasDelta) {
    camera.viewfinder.position -= canvasDelta / camera.viewfinder.zoom;
  }

  /// Zooms around a physical canvas anchor while retaining the world point
  /// beneath that anchor.
  void zoomAt({
    required Vector2 canvasPosition,
    required double scaleFactor,
    double minZoom = 0.5,
    double maxZoom = 4,
  }) {
    final before = camera.globalToLocal(canvasPosition);
    final nextZoom = (camera.viewfinder.zoom * scaleFactor).clamp(
      minZoom,
      maxZoom,
    );
    camera.viewfinder.zoom = nextZoom;
    final after = camera.globalToLocal(canvasPosition);
    camera.viewfinder.position += before - after;
  }

  /// Converts a physical canvas point into world coordinates, or returns null
  /// when the point falls in the pixel viewport's letterbox.
  Vector2? screenToWorld({
    required Vector2 canvasPosition,
    required GiantToadPixelViewport viewport,
    Vector2? output,
  }) {
    final logical = viewport.globalToLocal(canvasPosition);
    if (logical.x < 0 ||
        logical.y < 0 ||
        logical.x > viewport.resolution.width ||
        logical.y > viewport.resolution.height) {
      return null;
    }
    return camera.globalToLocal(canvasPosition, output: output);
  }
}
