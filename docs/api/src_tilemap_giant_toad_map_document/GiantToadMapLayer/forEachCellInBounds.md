<div>

<div>

# <span class="kind-method">forEachCellInBounds</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">forEachCellInBounds</span>({

1.  <span id="forEachCellInBounds-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span>, </span>
2.  <span id="forEachCellInBounds-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span>
3.  <span id="forEachCellInBounds-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span>
4.  <span id="forEachCellInBounds-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span>
5.  <span id="forEachCellInBounds-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span>, </span>
6.  <span id="forEachCellInBounds-param-visit" class="parameter">required <span class="type-annotation">void</span> <span class="parameter-name">visit</span>(</span>
    1.  <span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span>, </span>
    2.  <span id="param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
    3.  <span id="param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>

    ),
7.  <span id="forEachCellInBounds-param-metrics" class="parameter"><span class="type-annotation">[GiantToadMapTraversalMetrics](../../src_tilemap_giant_toad_map_document/GiantToadMapTraversalMetrics-class.md)?</span> <span class="parameter-name">metrics</span>, </span>

})

</div>

<div>

Invokes `visit` for each non-empty cell in the inclusive cell bounds.

Only chunks intersecting the bounds are scanned. This is the runtime traversal contract for renderers and spatial systems.

</div>

<div>

## Implementation

``` dart
void forEachCellInBounds({
  required int chunkSize,
  required int minX,
  required int minY,
  required int maxX,
  required int maxY,
  required void Function(GiantToadMapCell cell, int x, int y) visit,
  GiantToadMapTraversalMetrics? metrics,
}) {
  if (metrics != null) {
    metrics.chunksVisited = 0;
    metrics.cellsVisited = 0;
  }
  if (minX > maxX || minY > maxY) return;

  final minChunkX = _floorDivide(minX, chunkSize);
  final minChunkY = _floorDivide(minY, chunkSize);
  final maxChunkX = _floorDivide(maxX, chunkSize);
  final maxChunkY = _floorDivide(maxY, chunkSize);

  for (var chunkY = minChunkY; chunkY <= maxChunkY; chunkY++) {
    for (var chunkX = minChunkX; chunkX <= maxChunkX; chunkX++) {
      final cells = chunks[GiantToadChunkKey(chunkX, chunkY)];
      if (cells == null) continue;
      metrics?.chunksVisited++;

      final startX = chunkX * chunkSize;
      final startY = chunkY * chunkSize;
      final localMinX = (minX - startX).clamp(0, chunkSize - 1).toInt();
      final localMinY = (minY - startY).clamp(0, chunkSize - 1).toInt();
      final localMaxX = (maxX - startX).clamp(0, chunkSize - 1).toInt();
      final localMaxY = (maxY - startY).clamp(0, chunkSize - 1).toInt();
      for (var localY = localMinY; localY <= localMaxY; localY++) {
        for (var localX = localMinX; localX <= localMaxX; localX++) {
          final cell = cells[localY * chunkSize + localX];
          metrics?.cellsVisited++;
          if (cell != null && cell != 0) {
            visit(cell, startX + localX, startY + localY);
          }
        }
      }
    }
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_document](../../src_tilemap_giant_toad_map_document/index.md)
3.  [GiantToadMapLayer](../../src_tilemap_giant_toad_map_document/GiantToadMapLayer-class.md)
4.  forEachCellInBounds method

##### GiantToadMapLayer class

<div>

</div>

</div>

<div>

</div>
