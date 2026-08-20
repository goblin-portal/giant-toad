<div>

<div>

# <span class="kind-method">sourceRect</span> method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">sourceRect</span>(

1.  <span id="sourceRect-param-tileId" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileId</span></span>

)

</div>

<div>

## Implementation

``` dart
Rect sourceRect(int tileId) {
  if (!contains(tileId)) {
    throw RangeError.value(tileId, 'tileId', 'outside tileset $id');
  }
  final local = tileId - firstTileId;
  final x = margin + (local % columns) * (tileWidth + spacing);
  final y = margin + (local ~/ columns) * (tileHeight + spacing);
  return Rect.fromLTWH(
    x.toDouble(),
    y.toDouble(),
    tileWidth.toDouble(),
    tileHeight.toDouble(),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadTileset](../../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)
4.  sourceRect method

##### GiantToadTileset class

<div>

</div>

</div>

<div>

</div>
