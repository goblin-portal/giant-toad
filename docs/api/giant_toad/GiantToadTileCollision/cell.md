<div>

<div>

# <span class="kind-method">cell</span> method

</div>

<div>

<span class="returntype">[GiantToadMapCell](../../giant_toad/GiantToadMapCell.md)?</span> <span class="name">cell</span>(

1.  <span id="cell-param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
2.  <span id="cell-param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadMapCell cell(int x, int y) {
  final chunkSize = document.chunkSize;
  final chunkX = _floorDivide(x, chunkSize);
  final chunkY = _floorDivide(y, chunkSize);
  final localX = x - chunkX * chunkSize;
  final localY = y - chunkY * chunkSize;
  for (final candidate in [layer, ...additionalLayers].reversed) {
    final cells = candidate.chunks[GiantToadChunkKey(chunkX, chunkY)];
    if (cells == null) continue;
    final value = cells[localY * chunkSize + localX];
    if (value != null && value != 0) return value;
  }
  return 0;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTileCollision](../../giant_toad/GiantToadTileCollision-class.md)
4.  cell method

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
