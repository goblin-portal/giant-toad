<div>

<div>

# <span class="kind-method">cellBounds</span> static method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">cellBounds</span>({

1.  <span id="cellBounds-param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
2.  <span id="cellBounds-param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span>
3.  <span id="cellBounds-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span>

})

</div>

<div>

Returns the pixel bounds of a cell.

</div>

<div>

## Implementation

``` dart
static Rect cellBounds({
  required int x,
  required int y,
  required int tileSize,
}) {
  _checkTileSize(tileSize);
  final size = tileSize.toDouble();
  return Rect.fromLTWH(x * size, y * size, size, size);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_grid](../../src_tilemap_giant_toad_grid/index.md)
3.  [GiantToadGrid](../../src_tilemap_giant_toad_grid/GiantToadGrid-class.md)
4.  cellBounds static method

##### GiantToadGrid class

<div>

</div>

</div>

<div>

</div>
