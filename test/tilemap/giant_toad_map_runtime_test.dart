import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('typed rich cells preserve authored tile metadata', () {
    final cell = GiantToadTileCell.fromCell({
      'tileId': 7,
      'region': 'grass:2',
      'mask': 15,
      'damage': 2,
    });
    expect(cell.tileId, 7);
    expect(cell.region, 'grass:2');
    expect(cell.mask, 15);
    expect(cell.properties, {'damage': 2});
  });

  test('tilesets calculate margin and spacing source rectangles', () {
    final tileset = GiantToadTileset.fromJson({
      'id': 'terrain',
      'image': 'assets/images/terrain.png',
      'firstTileId': 4,
      'columns': 4,
      'tileCount': 8,
      'tileWidth': 16,
      'tileHeight': 16,
      'margin': 1,
      'spacing': 2,
    });
    expect(
      tileset.sourceRect(9).toString(),
      'Rect.fromLTRB(19.0, 19.0, 35.0, 35.0)',
    );
    expect(() => tileset.sourceRect(12), throwsRangeError);
  });

  test('tileset parser rejects malformed paths and animation frames', () {
    final base = <String, Object?>{
      'id': 'terrain',
      'image': 'tiles.png',
      'firstTileId': 0,
      'columns': 1,
      'tileCount': 1,
      'tileWidth': 16,
      'tileHeight': 16,
    };
    expect(
      () => GiantToadTileset.fromJson({...base, 'image': '../tiles.png'}),
      throwsFormatException,
    );
    expect(
      () => GiantToadTileset.fromJson({
        ...base,
        'animations': {
          '0': [
            {'tileId': 0, 'durationMs': 0},
          ],
        },
      }),
      throwsFormatException,
    );
    expect(
      () => GiantToadTileset.fromJson({...base, 'animations': []}),
      throwsFormatException,
    );
  });

  test('map object parser rejects unsafe coordinates and dimensions', () {
    expect(
      () => GiantToadMapObject.fromJson({
        'id': 'spawn',
        'type': 'player',
        'x': double.infinity,
        'y': 0,
      }),
      throwsFormatException,
    );
    expect(
      () => GiantToadMapObject.fromJson({
        'id': 'spawn',
        'kind': 'player',
        'x': 0,
        'y': 0,
        'width': -1,
      }),
      throwsFormatException,
    );
  });

  test('tile animations advance deterministically from authored timing', () {
    final tileset = GiantToadTileset.fromJson({
      'id': 'water',
      'image': 'assets/images/water.png',
      'firstTileId': 4,
      'columns': 3,
      'tileCount': 3,
      'tileWidth': 16,
      'tileHeight': 16,
      'animations': {
        '4': [
          {'tileId': 4, 'durationMs': 100},
          {'tileId': 5, 'durationMs': 200},
          {'tileId': 6, 'durationMs': 100},
        ],
      },
    });
    expect(tileset.displayedTile(4, Duration.zero), 4);
    expect(tileset.displayedTile(4, const Duration(milliseconds: 150)), 5);
    expect(tileset.displayedTile(4, const Duration(milliseconds: 350)), 6);
    expect(tileset.displayedTile(4, const Duration(milliseconds: 400)), 4);
  });

  test('map exposes typed tilesets and placed objects', () {
    final map = GiantToadMapDocument.fromJson({
      'tileSize': 16,
      'layers': <Object?>[],
      'tilesets': [
        {
          'id': 'terrain',
          'image': 'assets/images/terrain.png',
          'firstTileId': 0,
          'columns': 1,
          'tileCount': 1,
          'tileWidth': 16,
          'tileHeight': 16,
        },
      ],
      'objects': [
        {
          'id': 'spawn',
          'type': 'playerSpawn',
          'x': 8,
          'y': 12,
          'facing': 'down',
        },
      ],
    });
    expect(map.tilesets.single.id, 'terrain');
    expect(map.typedObjects.single.type, 'playerSpawn');
    expect(map.typedObjects.single.properties, {'facing': 'down'});
    final factories = GiantToadMapObjectFactories<String>()
      ..register(
        'playerSpawn',
        (object) => '${object.id}:${object.properties['facing']}',
      );
    expect(factories.createAll(map.typedObjects), ['spawn:down']);
    expect(
      () => factories.register('playerSpawn', (_) => 'duplicate'),
      throwsStateError,
    );
  });

  test('tilemap component invalidates after runtime document replacement', () {
    final first = GiantToadMapDocument(tileSize: 16, layers: const []);
    final second = GiantToadMapDocument(tileSize: 8, layers: const []);
    final component = GiantToadTilemapComponent(
      document: first,
      tileRenderer: (_, _, _, _, _) {},
    );
    component.replaceDocument(first);
    expect(component.revision, 0);
    component.replaceDocument(second);
    expect(component.document, same(second));
    expect(component.revision, 1);
  });

  test('tilemap reuses cached static chunk pictures until invalidated', () {
    final document = GiantToadMapDocument(
      tileSize: 16,
      chunkSize: 1,
      layers: [
        GiantToadMapLayer(
          id: 'ground',
          name: 'Ground',
          chunks: {
            const GiantToadChunkKey(0, 0): [1],
          },
        ),
      ],
    );
    var tileDraws = 0;
    final component = GiantToadTilemapComponent(
      document: document,
      cacheChunks: true,
      tileRenderer: (_, _, _, _, _) => tileDraws++,
    );
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder)
      ..clipRect(const Rect.fromLTWH(0, 0, 16, 16));

    component.render(canvas);
    expect(component.renderMetrics.chunkCacheMisses, 1);
    component.render(canvas);
    expect(component.renderMetrics.chunkCacheHits, 1);
    expect(tileDraws, 1);

    component.invalidateRenderCache();
    component.render(canvas);
    expect(component.renderMetrics.chunkCacheMisses, 1);
    expect(tileDraws, 2);
    recorder.endRecording().dispose();
    component.onRemove();
  });

  test('map edits invalidate only affected cached chunks', () {
    final document = GiantToadMapDocument(
      tileSize: 16,
      chunkSize: 1,
      layers: [
        GiantToadMapLayer(
          id: 'ground',
          name: 'Ground',
          chunks: {
            const GiantToadChunkKey(0, 0): [1],
            const GiantToadChunkKey(1, 0): [2],
          },
        ),
      ],
    );
    var tileDraws = 0;
    final component = GiantToadTilemapComponent(
      document: document,
      cacheChunks: true,
      tileRenderer: (_, _, _, _, _) => tileDraws++,
    );
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder)
      ..clipRect(const Rect.fromLTWH(0, 0, 32, 16));
    component.render(canvas);

    final edit = (GiantToadMapEditTransaction(
      document,
    )..setCell(layerId: 'ground', x: 0, y: 0, value: 3)).commit()!;
    expect(edit.affectedChunks(1), {
      (layerId: 'ground', chunk: const GiantToadChunkKey(0, 0)),
    });
    component.applyEdit(edit);
    component.render(canvas);

    expect(component.renderMetrics.chunkCacheMisses, 1);
    expect(component.renderMetrics.chunkCacheHits, 1);
    expect(tileDraws, 3);
    recorder.endRecording().dispose();
    component.onRemove();
  });

  test('autotile rules resolve authored masks with fallback', () {
    final rules = GiantToadAutotileRules({15: 4, 255: 8});
    expect(rules.resolve(15, fallback: 1), 4);
    expect(rules.resolve(3, fallback: 1), 1);
  });

  test('area tracker emits stable enter and exit transitions', () {
    final area = GiantToadMapArea(
      id: 'pond',
      name: 'Pond',
      type: 'water',
      x: 2,
      y: 2,
      width: 2,
      height: 2,
    );
    final tracker = GiantToadAreaTracker(GiantToadAreaDocument(areas: [area]));
    expect(tracker.update(0, 0).entered, isEmpty);
    expect(tracker.update(2, 2).entered.single.id, 'pond');
    expect(tracker.update(3, 3).entered, isEmpty);
    expect(tracker.update(4, 3).exited.single.id, 'pond');
  });
}
