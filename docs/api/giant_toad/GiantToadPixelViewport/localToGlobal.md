<div>

<div>

# <span class="kind-method">localToGlobal</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">localToGlobal</span>(

1.  <span id="localToGlobal-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, {</span>
2.  <span id="localToGlobal-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Converts a point from the local coordinate system of the viewport to the global coordinate system.

Use `output` to send in a Vector2 object that will be used to avoid creating a new Vector2 object in this method.

Opposite of [globalToLocal](../../giant_toad/GiantToadPixelViewport/globalToLocal.md).

</div>

<div>

## Implementation

``` dart
@override
Vector2 localToGlobal(Vector2 point, {Vector2? output}) {
  final viewportPoint = output ?? Vector2.zero();
  viewportPoint
    ..setFrom(point)
    ..scale(metrics.scale);
  return super.localToGlobal(viewportPoint, output: viewportPoint);
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
4.  localToGlobal method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
