<div>

<div>

# <span class="kind-method">cellCenters</span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span></span> <span class="name">cellCenters</span>(

1.  <span id="cellCenters-param-cells" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadCell](../../giant_toad/GiantToadCell-class.md)</span>\></span></span> <span class="parameter-name">cells</span>, {</span>
2.  <span id="cellCenters-param-tileSize" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">tileSize</span>, </span>

})

</div>

<div>

## Implementation

``` dart
static List<Vector2> cellCenters(
  Iterable<GiantToadCell> cells, {
  required double tileSize,
}) => [
  for (final cell in cells)
    Vector2((cell.x + 0.5) * tileSize, (cell.y + 0.5) * tileSize),
];
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPathAdapters](../../giant_toad/GiantToadPathAdapters-class.md)
4.  cellCenters static method

##### GiantToadPathAdapters class

<div>

</div>

</div>

<div>

</div>
