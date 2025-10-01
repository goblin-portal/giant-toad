import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/post_process.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('pixelation is a Flame post-process with validated scale', () {
    expect(GiantToadPixelatePostProcess(pixelScale: 3), isA<PostProcess>());
    expect(
      () => GiantToadPixelatePostProcess(pixelScale: 0),
      throwsArgumentError,
    );
  });

  test('lighting owns mutable screen-space pixel lights', () {
    final light = GiantToadPixelLight(
      position: Vector2(12, 8),
      radius: 16,
      color: const Color(0xffffcc88),
      intensity: 0.5,
    );
    final lighting = GiantToadLightingPostProcess(lights: [light]);
    expect(lighting, isA<PostProcess>());
    expect(lighting.lights.single.position, Vector2(12, 8));
    lighting.ambient = const Color(0xaa000000);
    expect(lighting.ambient, const Color(0xaa000000));
  });
}
