<div>

<div>

# <span class="kind-method">globalToLocal</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">globalToLocal</span>(

1.  <span id="globalToLocal-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, {</span>
2.  <span id="globalToLocal-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Converts a point from the global coordinate system to the local coordinate system of the viewport.

Use `output` to send in a Vector2 object that will be used to avoid creating a new Vector2 object in this method.

Opposite of [localToGlobal](../../giant_toad/GiantToadPixelViewport/localToGlobal.md).

</div>

<div>

## Implementation

``` dart
@override
Vector2 globalToLocal(Vector2 point, {Vector2? output}) {
  final viewportPoint = super.globalToLocal(point, output: output);
  viewportPoint.scale(1 / metrics.scale);
  return viewportPoint;
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
4.  globalToLocal method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
