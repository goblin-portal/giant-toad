import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

class _Target extends PositionComponent {
  _Target(this.targetCenter);
  final Vector2 targetCenter;

  @override
  Vector2 get absoluteCenter => targetCenter;
}

void main() {
  test(
    'follows a Flame component with deadzone, bounds, and pixel snapping',
    () {
      final camera = CameraComponent(
        viewport: FixedResolutionViewport(resolution: Vector2(100, 60)),
      );
      camera.viewfinder.position = Vector2(50, 30);
      final target = _Target(Vector2(95, 55));
      final controller = GiantToadPixelCameraController(
        camera: camera,
        target: target,
        followSpeed: 0,
        deadzone: const Rect.fromLTWH(0, 0, 20, 10),
        worldBounds: const Rect.fromLTWH(0, 0, 120, 80),
      );

      controller.update(1 / 60);
      expect(camera.viewfinder.position, Vector2(70, 50));
    },
  );

  test('trauma shake decays and remains deterministic', () {
    final firstCamera = CameraComponent();
    final secondCamera = CameraComponent();
    final first = GiantToadPixelCameraController(
      camera: firstCamera,
      pixelSnap: false,
    );
    final second = GiantToadPixelCameraController(
      camera: secondCamera,
      pixelSnap: false,
    );
    first.addTrauma(0.8);
    second.addTrauma(0.8);

    first.update(0.1);
    second.update(0.1);
    expect(firstCamera.viewfinder.position, secondCamera.viewfinder.position);
    expect(first.trauma, closeTo(0.7, 1e-9));
    expect(() => first.addTrauma(-1), throwsArgumentError);
  });
}
