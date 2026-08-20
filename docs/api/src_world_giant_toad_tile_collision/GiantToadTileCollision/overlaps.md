<div>

<div>

# <span class="kind-method">overlaps</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">overlaps</span>(

1.  <span id="overlaps-param-bounds" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">bounds</span></span>

)

</div>

<div>

## Implementation

``` dart
bool overlaps(Rect bounds) {
  final tileSize = document.tileSize;
  final minX = (bounds.left / tileSize).floor();
  final minY = (bounds.top / tileSize).floor();
  final maxX = ((bounds.right - 1e-9) / tileSize).floor();
  final maxY = ((bounds.bottom - 1e-9) / tileSize).floor();
  for (var y = minY; y <= maxY; y++) {
    for (var x = minX; x <= maxX; x++) {
      if (solidAt(x, y)) return true;
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
2.  [giant_toad_tile_collision](../../src_world_giant_toad_tile_collision/index.md)
3.  [GiantToadTileCollision](../../src_world_giant_toad_tile_collision/GiantToadTileCollision-class.md)
4.  overlaps method

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
