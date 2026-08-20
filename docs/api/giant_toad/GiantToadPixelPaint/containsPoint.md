<div>

<div>

# <span class="kind-method">containsPoint</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">containsPoint</span>(

1.  <span id="containsPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Same as [containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsLocalPoint.md), but for a "global" `point`.

This will be deprecated in the future, due to the notion of "global" point not being well-defined.

</div>

<div>

## Implementation

``` dart
bool containsPoint(Vector2 point) => containsLocalPoint(point);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  containsPoint method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
