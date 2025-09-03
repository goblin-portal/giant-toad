import 'dart:ui';

import 'package:flame/components.dart';

import 'giant_toad_map_document.dart';
import 'giant_toad_map_edit.dart';

/// Draws one authored map cell at its integer tile coordinates.
typedef GiantToadTileRenderer =
    void Function(
      Canvas canvas,
      GiantToadMapCell cell,
      int tileX,
      int tileY,
      int tileSize,
    );

class GiantToadTilemapRenderMetrics {
  int chunkCacheHits = 0;
  int chunkCacheMisses = 0;
  int cellsRendered = 0;

  void reset() {
    chunkCacheHits = 0;
    chunkCacheMisses = 0;
    cellsRendered = 0;
  }
}

typedef _ChunkPictureKey = ({String layerId, GiantToadChunkKey chunk});

/// A Flame component that renders the visible layers of a sparse map.
///
/// The component owns map traversal only. [tileRenderer] resolves authored tile
/// cells to sprites, atlas regions, or custom draws, keeping asset/catalog
/// policy outside the map-data runtime.
class GiantToadTilemapComponent extends PositionComponent {
  GiantToadTilemapComponent({
    required this.document,
    required this.tileRenderer,
    this.cacheChunks = false,
    super.position,
    super.priority,
    super.key,
  });

  GiantToadMapDocument document;
  final GiantToadTileRenderer tileRenderer;

  /// Caches static chunk pictures until [invalidateRenderCache] is called.
  ///
  /// Keep disabled for animated or time-dependent custom tile renderers.
  final bool cacheChunks;
  final renderMetrics = GiantToadTilemapRenderMetrics();
  final Map<_ChunkPictureKey, Picture> _chunkPictures = {};
  final Map<int, Paint> _opacityPaints = {};
  int _revision = 0;

  /// Monotonic invalidation token for render caches and diagnostics.
  int get revision => _revision;

  void replaceDocument(
    GiantToadMapDocument next, {
    Iterable<GiantToadEditedChunk>? changedChunks,
  }) {
    if (identical(document, next)) return;
    final gridChanged =
        document.tileSize != next.tileSize ||
        document.chunkSize != next.chunkSize;
    document = next;
    _revision++;
    if (changedChunks == null || gridChanged) {
      invalidateRenderCache();
      return;
    }
    for (final changed in changedChunks) {
      _chunkPictures.remove(changed)?.dispose();
    }
  }

  /// Applies a reversible map edit and invalidates only its affected chunks.
  void applyEdit(GiantToadMapEdit edit) {
    final changedChunks = edit.affectedChunks(document.chunkSize);
    replaceDocument(edit.apply(document), changedChunks: changedChunks);
  }

  /// Disposes all cached pictures after an asset or animation-frame change.
  void invalidateRenderCache() {
    for (final picture in _chunkPictures.values) {
      picture.dispose();
    }
    _chunkPictures.clear();
  }

  @override
  void onRemove() {
    invalidateRenderCache();
    super.onRemove();
  }

  Picture _recordChunk(
    GiantToadMapLayer layer,
    GiantToadChunkKey chunkKey,
    List<GiantToadMapCell> cells,
  ) {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    final chunkSize = document.chunkSize;
    final tileSize = document.tileSize;
    final startX = chunkKey.x * chunkSize;
    final startY = chunkKey.y * chunkSize;
    for (var localY = 0; localY < chunkSize; localY++) {
      for (var localX = 0; localX < chunkSize; localX++) {
        final cell = cells[localY * chunkSize + localX];
        if (cell == null || cell == 0) continue;
        renderMetrics.cellsRendered++;
        tileRenderer(canvas, cell, startX + localX, startY + localY, tileSize);
      }
    }
    return recorder.endRecording();
  }

  void _renderCachedLayer(
    Canvas canvas,
    GiantToadMapLayer layer, {
    required int minX,
    required int minY,
    required int maxX,
    required int maxY,
  }) {
    final chunkSize = document.chunkSize;
    final minChunkX = _floorDivide(minX, chunkSize);
    final minChunkY = _floorDivide(minY, chunkSize);
    final maxChunkX = _floorDivide(maxX, chunkSize);
    final maxChunkY = _floorDivide(maxY, chunkSize);
    for (var chunkY = minChunkY; chunkY <= maxChunkY; chunkY++) {
      for (var chunkX = minChunkX; chunkX <= maxChunkX; chunkX++) {
        final chunkKey = GiantToadChunkKey(chunkX, chunkY);
        final cells = layer.chunks[chunkKey];
        if (cells == null) continue;
        final cacheKey = (layerId: layer.id, chunk: chunkKey);
        var picture = _chunkPictures[cacheKey];
        if (picture == null) {
          renderMetrics.chunkCacheMisses++;
          picture = _recordChunk(layer, chunkKey, cells);
          _chunkPictures[cacheKey] = picture;
        } else {
          renderMetrics.chunkCacheHits++;
        }
        canvas.drawPicture(picture);
      }
    }
  }

  static int _floorDivide(int dividend, int divisor) => dividend >= 0
      ? dividend ~/ divisor
      : -((-dividend + divisor - 1) ~/ divisor);

  @override
  void render(Canvas canvas) {
    final clipBounds = canvas.getLocalClipBounds();
    final tileSize = document.tileSize;
    final minX = (clipBounds.left / tileSize).floor();
    final minY = (clipBounds.top / tileSize).floor();
    final maxX = (clipBounds.right / tileSize).ceil() - 1;
    final maxY = (clipBounds.bottom / tileSize).ceil() - 1;
    renderMetrics.reset();

    for (final layer in document.layers) {
      if (layer.additionalFields['visible'] == false) continue;
      final opacity = switch (layer.additionalFields['opacity']) {
        final num value => value.clamp(0, 1).toDouble(),
        _ => 1.0,
      };
      if (opacity == 0) continue;
      if (opacity < 1) {
        if (!layer.hasCellInBounds(
          chunkSize: document.chunkSize,
          minX: minX,
          minY: minY,
          maxX: maxX,
          maxY: maxY,
        )) {
          continue;
        }
        final alpha = (opacity * 255).round();
        final paint = _opacityPaints.putIfAbsent(
          alpha,
          () => Paint()..color = Color.fromARGB(alpha, 255, 255, 255),
        );
        canvas.saveLayer(clipBounds, paint);
      }
      if (cacheChunks) {
        _renderCachedLayer(
          canvas,
          layer,
          minX: minX,
          minY: minY,
          maxX: maxX,
          maxY: maxY,
        );
      } else {
        layer.forEachCellInBounds(
          chunkSize: document.chunkSize,
          minX: minX,
          minY: minY,
          maxX: maxX,
          maxY: maxY,
          visit: (cell, tileX, tileY) {
            renderMetrics.cellsRendered++;
            tileRenderer(canvas, cell, tileX, tileY, tileSize);
          },
        );
      }
      if (opacity < 1) canvas.restore();
    }
  }
}
