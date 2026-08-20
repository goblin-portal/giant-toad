<div>

<div>

# <span class="kind-method">containsLocalPoint</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">containsLocalPoint</span>(

1.  <span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
bool containsLocalPoint(Vector2 point) {
  final x = point.x;
  final y = point.y;
  return x >= 0 && y >= 0 && x <= size.x && y <= size.y;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_viewport](../../src_giant_toad_pixel_viewport/index.md)
3.  [GiantToadPixelViewport](../../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)
4.  containsLocalPoint method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
