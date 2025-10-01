import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  late GiantToadCollisionWorld world;
  setUp(() {
    world = GiantToadCollisionWorld()
      ..add(
        GiantToadWorldCollider(
          id: 'floor',
          bounds: const Rect.fromLTWH(0, 100, 200, 16),
          tags: const ['ground'],
        ),
      )
      ..add(
        GiantToadWorldCollider(
          id: 'block',
          bounds: const Rect.fromLTWH(60, 60, 20, 40),
          tags: const ['block'],
        ),
      )
      ..add(
        GiantToadWorldCollider(
          id: 'goal',
          bounds: const Rect.fromLTWH(120, 80, 20, 20),
          trigger: true,
          tags: const ['goal'],
        ),
      );
  });

  test('move and slide reports stable body ids and normals', () {
    final horizontal = world.moveAndSlide(
      const Rect.fromLTWH(20, 70, 10, 10),
      Vector2(100, 0),
    );
    expect(horizontal.bounds.left, 50);
    expect(horizontal.hits.single.collider.id, 'block');
    expect(horizontal.hits.single.normal, Vector2(-1, 0));
    final falling = world.moveAndSlide(horizontal.bounds, Vector2(0, 100));
    expect(falling.bounds.top, 90);
    expect(falling.hits.single.collider.id, 'floor');
  });

  test('trigger queries filter by tags without blocking movement', () {
    final result = world.moveAndSlide(
      const Rect.fromLTWH(100, 80, 10, 10),
      Vector2(25, 0),
    );
    expect(result.applied.x, 25);
    expect(world.touching(result.bounds, tag: 'goal').single.id, 'goal');
    expect(world.touching(result.bounds, tag: 'ground'), isEmpty);
  });

  test('raycast returns nearest non-trigger hit and supports tag filters', () {
    final hit = world.raycast(Vector2(0, 70), Vector2(150, 70));
    expect(hit?.collider.id, 'block');
    expect(hit?.point.x, 60);
    expect(
      world.raycast(Vector2(0, 70), Vector2(150, 70), tag: 'ground'),
      isNull,
    );
  });
}
