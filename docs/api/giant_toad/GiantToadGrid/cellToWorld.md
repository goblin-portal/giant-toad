<div>

<div>

# <span class="kind-method">cellToWorld</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">cellToWorld</span>({

1.  <span id="cellToWorld-param-cell" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">cell</span>, </span>
2.  <span id="cellToWorld-param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span>
3.  <span id="cellToWorld-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Converts a cell coordinate to the world position of its top-left corner.

</div>

<div>

## Implementation

``` dart
static Vector2 cellToWorld({
  required Vector2 cell,
  required int tileSize,
  Vector2? output,
}) {
  _checkTileSize(tileSize);
  final world = output ?? Vector2.zero();
  world.setValues(cell.x * tileSize, cell.y * tileSize);
  return world;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadGrid](../../giant_toad/GiantToadGrid-class.md)
4.  cellToWorld static method

##### GiantToadGrid class

<div>

</div>

</div>

<div>

</div>
