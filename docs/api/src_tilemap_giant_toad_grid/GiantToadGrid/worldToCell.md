<div>

<div>

# <span class="kind-method">worldToCell</span> static method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">worldToCell</span>({

1.  <span id="worldToCell-param-worldPosition" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">worldPosition</span>, </span>
2.  <span id="worldToCell-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span>
3.  <span id="worldToCell-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Converts world pixels to the containing cell using floor division.

</div>

<div>

## Implementation

``` dart
static Vector2 worldToCell({
  required Vector2 worldPosition,
  required int tileSize,
  Vector2? output,
}) {
  _checkTileSize(tileSize);
  final cell = output ?? Vector2.zero();
  cell.setValues(
    (worldPosition.x / tileSize).floorToDouble(),
    (worldPosition.y / tileSize).floorToDouble(),
  );
  return cell;
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
4.  worldToCell static method

##### GiantToadGrid class

<div>

</div>

</div>

<div>

</div>
