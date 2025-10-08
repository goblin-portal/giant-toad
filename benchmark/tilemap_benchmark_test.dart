import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad_tilemap.dart';

void main() {
  test(
    'large sparse tilemap keeps traversal and rendering viewport-bounded',
    () {
      final fullChunk = List<GiantToadMapCell>.filled(16 * 16, 1);
      final chunks = <GiantToadChunkKey, List<GiantToadMapCell>>{
        for (var y = 0; y < 100; y++)
          for (var x = 0; x < 100; x++) GiantToadChunkKey(x, y): fullChunk,
      };
      final document = GiantToadMapDocument(
        tileSize: 16,
        chunkSize: 16,
        layers: [
          GiantToadMapLayer(id: 'ground', name: 'Ground', chunks: chunks),
        ],
      );
      final cached = GiantToadTilemapComponent(
        document: document,
        cacheChunks: true,
        tileRenderer: _renderTile,
      );
      final uncached = GiantToadTilemapComponent(
        document: document,
        tileRenderer: _renderTile,
      );
      final recorder = PictureRecorder();
      final canvas = Canvas(recorder)
        ..clipRect(const Rect.fromLTWH(0, 0, 2560, 2560));

      cached.render(canvas);
      expect(cached.renderMetrics.chunkCacheMisses, 100);
      cached.render(canvas);
      expect(cached.renderMetrics.chunkCacheHits, 100);
      expect(cached.renderMetrics.cellsRendered, 0);

      uncached.render(canvas);
      expect(uncached.renderMetrics.cellsRendered, 25_600);

      final uncachedTime = _measure(() => uncached.render(canvas));
      final cachedTime = _measure(() => cached.render(canvas));
      debugPrint(
        'tilemap benchmark: 10000 loaded chunks, 100 visible, 100 frames; '
        'uncached=${uncachedTime.inMicroseconds}us '
        'cached=${cachedTime.inMicroseconds}us',
      );

      recorder.endRecording().dispose();
      cached.onRemove();
      uncached.onRemove();
    },
  );
}

Duration _measure(void Function() render) {
  final stopwatch = Stopwatch()..start();
  for (var frame = 0; frame < 100; frame++) {
    render();
  }
  stopwatch.stop();
  return stopwatch.elapsed;
}

final _paint = Paint()..isAntiAlias = false;

void _renderTile(
  Canvas canvas,
  GiantToadMapCell cell,
  int x,
  int y,
  int tileSize,
) {
  canvas.drawRect(
    Rect.fromLTWH(
      (x * tileSize).toDouble(),
      (y * tileSize).toDouble(),
      tileSize.toDouble(),
      tileSize.toDouble(),
    ),
    _paint,
  );
}
