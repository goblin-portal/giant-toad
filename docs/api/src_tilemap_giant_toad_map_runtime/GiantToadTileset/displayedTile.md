<div>

<div>

# <span class="kind-method">displayedTile</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">displayedTile</span>(

1.  <span id="displayedTile-param-tileId" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileId</span>, </span>
2.  <span id="displayedTile-param-elapsed" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">elapsed</span></span>

)

</div>

<div>

## Implementation

``` dart
int displayedTile(int tileId, Duration elapsed) =>
    animations[tileId]?.tileAt(elapsed) ?? tileId;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_runtime](../../src_tilemap_giant_toad_map_runtime/index.md)
3.  [GiantToadTileset](../../src_tilemap_giant_toad_map_runtime/GiantToadTileset-class.md)
4.  displayedTile method

##### GiantToadTileset class

<div>

</div>

</div>

<div>

</div>
