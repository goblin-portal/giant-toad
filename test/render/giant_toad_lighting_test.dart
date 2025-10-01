import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('drop shadows rasterize only the source silhouette', () {
    final rects = GiantToadLighting.dropShadowRects(
      const GiantToadShadowShape(
        x: 10,
        y: 20,
        width: 6,
        height: 3,
        opacity: 180,
      ),
    );
    expect(rects, hasLength(1));
    expect(rects.single.rect, const Rect.fromLTWH(10, 20, 6, 3));
    expect((rects.single.color.a * 255).round(), 180);
  });

  test('circle drop shadows use pixel rows instead of a smooth primitive', () {
    final rects = GiantToadLighting.dropShadowRects(
      const GiantToadShadowShape(
        kind: 'circle',
        x: 8,
        y: 8,
        radius: 4,
        opacity: 180,
      ),
    );
    expect(rects, hasLength(8));
    expect(rects.every((rect) => rect.rect.height == 1), isTrue);
    expect(rects.first.rect.width, lessThan(rects[3].rect.width));
  });

  group('GiantToadLighting.shadowRects', () {
    test('applies pixel projection, fade, and snapping', () {
      final rects = GiantToadLighting.shadowRects(
        const GiantToadShadowShape(
          x: 10,
          y: 20,
          width: 3,
          height: 2,
          heightFromGround: 4,
          opacity: 255,
        ),
        options: const GiantToadShadowOptions(
          height: 4,
          directionX: 1,
          color: Color(0xff080c12),
        ),
      );

      expect(rects.map((command) => command.rect.left), [13, 12, 11]);
      expect(rects.map((command) => command.rect.top), [20, 20, 20]);
      expect(rects.map((command) => (command.color.a * 255).round()), [
        11,
        47,
        107,
      ]);
    });

    test('uses row silhouettes for oval and diamond shapes', () {
      for (final kind in const ['oval', 'diamond']) {
        final rects = GiantToadLighting.shadowRects(
          GiantToadShadowShape(
            kind: kind,
            x: 0,
            y: 0,
            width: 8,
            height: 4,
            heightFromGround: 2,
            opacity: 255,
          ),
          options: const GiantToadShadowOptions(directionX: 1),
        );
        expect(rects, isNotEmpty);
        expect(
          rects.map((command) => command.rect.width).toSet().length,
          greaterThan(1),
        );
      }
    });

    test('rasterizes transformed polygon silhouettes', () {
      final rects = GiantToadLighting.shadowRects(
        const GiantToadShadowShape(
          kind: 'polygon',
          x: 4,
          y: 5,
          points: [
            GiantToadShadowPoint(0, 0),
            GiantToadShadowPoint(6, 0),
            GiantToadShadowPoint(3, 5),
          ],
          rotation: 30,
          scaleX: 2,
          flipY: true,
          heightFromGround: 3,
          opacity: 200,
        ),
        options: const GiantToadShadowOptions(directionX: 1, directionY: 1),
      );
      expect(rects, isNotEmpty);
      expect(rects.every((command) => command.rect.width > 0), isTrue);
    });

    test('disabled and zero-direction-degenerate shapes emit nothing', () {
      expect(
        GiantToadLighting.shadowRects(
          const GiantToadShadowShape(x: 0, y: 0, enabled: false),
        ),
        isEmpty,
      );
    });
  });

  group('GiantToadLighting.shadowTriangles', () {
    test('projects a connected silhouette away from the light direction', () {
      final triangles = GiantToadLighting.shadowTriangles(
        const GiantToadShadowShape(
          x: 10,
          y: 20,
          width: 3,
          height: 2,
          heightFromGround: 4,
          opacity: 180,
        ),
        options: const GiantToadShadowOptions(
          directionX: 1,
          directionY: 0,
          smoothFallback: true,
        ),
      );
      expect(triangles, hasLength(16));
      expect(triangles.first.a, const Offset(10, 20));
      expect(triangles.first.b, const Offset(13, 20));
      expect(triangles.first.c, const Offset(17, 20));
      final allPoints = [
        for (final triangle in triangles) ...[
          triangle.a,
          triangle.b,
          triangle.c,
        ],
      ];
      expect(
        allPoints.map((point) => point.dx).reduce((a, b) => a > b ? a : b),
        17,
      );
    });

    test('supports circular and transformed polygon cast silhouettes', () {
      final circle = GiantToadLighting.shadowTriangles(
        const GiantToadShadowShape(
          kind: 'circle',
          x: 8,
          y: 8,
          radius: 4,
          heightFromGround: 12,
        ),
        options: const GiantToadShadowOptions(directionX: -1, directionY: 1),
      );
      final polygon = GiantToadLighting.shadowTriangles(
        const GiantToadShadowShape(
          kind: 'polygon',
          x: 2,
          y: 3,
          points: [
            GiantToadShadowPoint(0, 0),
            GiantToadShadowPoint(8, 0),
            GiantToadShadowPoint(4, 10),
          ],
          rotation: 30,
          flipX: true,
        ),
      );
      expect(circle, hasLength(80));
      expect(polygon, hasLength(12));
    });
  });
}
