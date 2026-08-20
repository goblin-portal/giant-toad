<div>

<div>

# <span class="kind-method">call</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">call</span>(

1.  <span id="call-param-canvas" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">canvas</span>, </span>
2.  <span id="call-param-rawCell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../../src_tilemap_giant_toad_map_document/GiantToadMapCell.md)?</span> <span class="parameter-name">rawCell</span>, </span>
3.  <span id="call-param-tileX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileX</span>, </span>
4.  <span id="call-param-tileY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileY</span>, </span>
5.  <span id="call-param-tileSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span>

)

</div>

<div>

## Implementation

``` dart
void call(
  Canvas canvas,
  GiantToadMapCell rawCell,
  int tileX,
  int tileY,
  int tileSize,
) {
  final cell = GiantToadTileCell.fromCell(rawCell);
  final tileset = _tilesetFor(cell.tileId);
  if (tileset == null) return;
  canvas.drawImageRect(
    image,
    tileset.sourceRect(tileset.displayedTile(cell.tileId, elapsed)),
    Rect.fromLTWH(
      (tileX * tileSize).toDouble(),
      (tileY * tileSize).toDouble(),
      tileSize.toDouble(),
      tileSize.toDouble(),
    ),
    _paint,
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
3.  [GiantToadAtlasTileRenderer](../../src_tilemap_giant_toad_map_runtime/GiantToadAtlasTileRenderer-class.md)
4.  call method

##### GiantToadAtlasTileRenderer class

<div>

</div>

</div>

<div>

</div>
