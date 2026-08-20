<div>

<div>

# <span class="kind-constructor">GiantToadAtlasTileRenderer</span> constructor

</div>

<div>

<span class="name">GiantToadAtlasTileRenderer</span>({

1.  <span id="param-image" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">image</span>, </span>
2.  <span id="param-tilesets" class="parameter">required <span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTileset](../../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)</span>\></span></span> <span class="parameter-name">tilesets</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadAtlasTileRenderer({
  required this.image,
  required List<GiantToadTileset> tilesets,
}) : tilesets = List.unmodifiable(tilesets),
     _tilesetsByFirstTile = _indexTilesets(tilesets),
     _paint = Paint()
       ..isAntiAlias = false
       ..filterQuality = FilterQuality.none;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadAtlasTileRenderer](../../src_tilemap_giant_toad_map_runtime/GiantToadAtlasTileRenderer-class.md)
4.  GiantToadAtlasTileRenderer.new constructor

##### GiantToadAtlasTileRenderer class

<div>

</div>

</div>

<div>

</div>
