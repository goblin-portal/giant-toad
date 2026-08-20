<div>

<div>

# <span class="kind-method">containsLocalPoint</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">containsLocalPoint</span>(

1.  <span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Tests whether the given point lies within the viewport.

This method must be consistent with the action of [clip](../../giant_toad/GiantToadPixelViewport/clip.md), in the sense that [containsLocalPoint](../../giant_toad/GiantToadPixelViewport/containsLocalPoint.md) must return true if and only if that point on the canvas is not clipped by [clip](../../giant_toad/GiantToadPixelViewport/clip.md).

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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelViewport](../../giant_toad/GiantToadPixelViewport-class.md)
4.  containsLocalPoint method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
