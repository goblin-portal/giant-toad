import 'dart:math' show Point;
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

GiantToadTileCollision collisionFixture() {
  final cells = List<Object?>.filled(16 * 16, 0);
  for (var x = 0; x < 16; x++) {
    cells[4 * 16 + x] = 1;
  }
  cells[3 * 16 + 5] = 1;
  return GiantToadTileCollision(
    document: GiantToadMapDocument(
      tileSize: 16,
      layers: [
        GiantToadMapLayer(
          id: 'solids',
          name: 'Solids',
          chunks: {const GiantToadChunkKey(0, 0): cells},
        ),
      ],
    ),
  );
}

void main() {
  test('queries sparse solid cells and rectangle overlap', () {
    final collision = collisionFixture();
    expect(collision.solidAt(5, 3), isTrue);
    expect(collision.solidAt(-1, 3), isFalse);
    expect(collision.overlaps(const Rect.fromLTWH(80, 48, 8, 8)), isTrue);
    expect(collision.overlaps(const Rect.fromLTWH(0, 0, 8, 8)), isFalse);
  });

  test('merges equal horizontal tile runs into stable rectangles', () {
    final cells = List<Object?>.filled(16 * 16, 0);
    for (var y = 1; y <= 2; y++) {
      for (var x = 1; x <= 3; x++) {
        cells[y * 16 + x] = 1;
      }
    }
    final collision = GiantToadTileCollision(
      document: GiantToadMapDocument(
        tileSize: 16,
        layers: [
          GiantToadMapLayer(
            id: 'solids',
            name: 'Solids',
            chunks: {const GiantToadChunkKey(0, 0): cells},
          ),
        ],
      ),
    );
    expect(collision.mergedSolidRects(minX: 0, minY: 0, maxX: 5, maxY: 4), [
      const Rect.fromLTWH(16, 16, 48, 32),
    ]);
  });

  test('sweeps horizontally without tunneling through a tile', () {
    final result = collisionFixture().moveAndSlide(
      const Rect.fromLTWH(32, 48, 16, 16),
      Vector2(80, 0),
    );
    expect(result.position, Vector2(64, 48));
    expect(result.hitRight, isTrue);
    expect(result.applied.x, 32);
  });

  test('lands on a floor and reports grounded movement', () {
    final result = collisionFixture().moveAndSlide(
      const Rect.fromLTWH(16, 16, 16, 16),
      Vector2(0, 100),
    );
    expect(result.position, Vector2(16, 48));
    expect(result.grounded, isTrue);
    expect(result.applied.y, 32);
  });

  test('supports one-way platforms, slopes, and trigger queries', () {
    final cells = List<Object?>.filled(16 * 16, 0);
    cells[4 * 16 + 1] = {'tileId': 1, 'collision': 'oneWayUp'};
    cells[4 * 16 + 2] = {'tileId': 2, 'collision': 'slopeUpRight'};
    cells[2 * 16 + 3] = {'tileId': 3, 'collision': 'trigger'};
    final collision = GiantToadTileCollision(
      document: GiantToadMapDocument(
        tileSize: 16,
        layers: [
          GiantToadMapLayer(
            id: 'solids',
            name: 'Solids',
            chunks: {const GiantToadChunkKey(0, 0): cells},
          ),
        ],
      ),
    );

    final landing = collision.moveAndSlide(
      const Rect.fromLTWH(16, 16, 16, 16),
      Vector2(0, 100),
    );
    expect(landing.position.y, 48);
    expect(landing.grounded, isTrue);
    final throughBottom = collision.moveAndSlide(
      const Rect.fromLTWH(16, 70, 16, 8),
      Vector2(0, -30),
    );
    expect(throughBottom.applied.y, -30);
    final slope = collision.moveAndSlide(
      const Rect.fromLTWH(32, 40, 8, 8),
      Vector2(0, 50),
    );
    expect(slope.position.y, 68);
    expect(collision.triggerCells(const Rect.fromLTWH(48, 32, 8, 8)), {
      const Point(3, 2),
    });
  });

  test('queries multiple collision layers with later-layer priority', () {
    final base = List<Object?>.filled(16 * 16, 0);
    final hazards = List<Object?>.filled(16 * 16, 0)
      ..[1] = {'tileId': 4, 'collision': 'trigger'};
    final extra = GiantToadMapLayer(
      id: 'hazards',
      name: 'Hazards',
      chunks: {const GiantToadChunkKey(0, 0): hazards},
    );
    final collision = GiantToadTileCollision(
      document: GiantToadMapDocument(
        tileSize: 16,
        layers: [
          GiantToadMapLayer(
            id: 'solids',
            name: 'Solids',
            chunks: {const GiantToadChunkKey(0, 0): base},
          ),
          extra,
        ],
      ),
      additionalLayers: [extra],
    );
    expect(collision.materialAt(1, 0), GiantToadTileMaterial.trigger);
  });

  test('pixel body lands on and is carried by moving platforms', () {
    final platform = GiantToadMovingPlatform(
      position: Vector2(0, 32),
      size: Vector2(48, 8),
    );
    final body = GiantToadPixelBody(
      collision: collisionFixture(),
      platforms: [platform],
      pixelSnap: false,
      position: Vector2.zero(),
      size: Vector2(16, 16),
    )..velocity.y = 40;
    body.update(1);
    expect(body.position, Vector2(0, 16));
    expect(body.lastMove!.grounded, isTrue);

    body.velocity.setZero();
    platform.velocity.x = 4;
    platform.update(1);
    body.update(1);
    expect(body.position, Vector2(4, 16));
  });

  test('supports negative sparse chunk coordinates', () {
    final cells = List<Object?>.filled(16 * 16, 0)..[15 * 16 + 15] = 1;
    final collision = GiantToadTileCollision(
      document: GiantToadMapDocument(
        tileSize: 16,
        layers: [
          GiantToadMapLayer(
            id: 'solids',
            name: 'Solids',
            chunks: {const GiantToadChunkKey(-1, -1): cells},
          ),
        ],
      ),
    );
    expect(collision.solidAt(-1, -1), isTrue);
  });
}
