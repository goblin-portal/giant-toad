<div>

<div>

# <span class="kind-method">logicalToCanvas</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">logicalToCanvas</span>({

1.  <span id="logicalToCanvas-param-metrics" class="parameter">required <span class="type-annotation">[GiantToadViewportMetrics](../../giant_toad/GiantToadViewportMetrics-class.md)</span> <span class="parameter-name">metrics</span>, </span>
2.  <span id="logicalToCanvas-param-logicalPosition" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">logicalPosition</span>, </span>
3.  <span id="logicalToCanvas-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Converts a logical-canvas position to a physical game-canvas position.

Supply `output` to avoid allocating a new vector in per-frame code.

</div>

<div>

## Implementation

``` dart
static Vector2 logicalToCanvas({
  required GiantToadViewportMetrics metrics,
  required Vector2 logicalPosition,
  Vector2? output,
}) {
  final canvasPosition = output ?? Vector2.zero();
  canvasPosition.setValues(
    metrics.offset.x + logicalPosition.x * metrics.scale,
    metrics.offset.y + logicalPosition.y * metrics.scale,
  );
  return canvasPosition;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelCoordinates](../../giant_toad/GiantToadPixelCoordinates-class.md)
4.  logicalToCanvas static method

##### GiantToadPixelCoordinates class

<div>

</div>

</div>

<div>

</div>
