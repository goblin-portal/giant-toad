<div>

<div>

# <span class="kind-method">hasCellInBounds</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">hasCellInBounds</span>({

1.  <span id="hasCellInBounds-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span>, </span>
2.  <span id="hasCellInBounds-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span>
3.  <span id="hasCellInBounds-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span>
4.  <span id="hasCellInBounds-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span>
5.  <span id="hasCellInBounds-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span>, </span>

})

</div>

<div>

Whether the bounds contain at least one authored non-empty cell.

</div>

<div>

## Implementation

``` dart
bool hasCellInBounds({
  required int chunkSize,
  required int minX,
  required int minY,
  required int maxX,
  required int maxY,
}) {
  if (minX > maxX || minY > maxY) return false;
  final minChunkX = _floorDivide(minX, chunkSize);
  final minChunkY = _floorDivide(minY, chunkSize);
  final maxChunkX = _floorDivide(maxX, chunkSize);
  final maxChunkY = _floorDivide(maxY, chunkSize);
  for (var chunkY = minChunkY; chunkY <= maxChunkY; chunkY++) {
    for (var chunkX = minChunkX; chunkX <= maxChunkX; chunkX++) {
      final cells = chunks[GiantToadChunkKey(chunkX, chunkY)];
      if (cells == null) continue;
      final startX = chunkX * chunkSize;
      final startY = chunkY * chunkSize;
      final localMinX = (minX - startX).clamp(0, chunkSize - 1).toInt();
      final localMinY = (minY - startY).clamp(0, chunkSize - 1).toInt();
      final localMaxX = (maxX - startX).clamp(0, chunkSize - 1).toInt();
      final localMaxY = (maxY - startY).clamp(0, chunkSize - 1).toInt();
      for (var localY = localMinY; localY <= localMaxY; localY++) {
        for (var localX = localMinX; localX <= localMaxX; localX++) {
          final cell = cells[localY * chunkSize + localX];
          if (cell != null && cell != 0) return true;
        }
      }
    }
  }
  return false;
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
4.  hasCellInBounds method

##### GiantToadMapLayer class

<div>

</div>

</div>

<div>

</div>
