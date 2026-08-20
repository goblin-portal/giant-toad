<div>

<div>

# <span class="kind-method">canvasToLogical</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="name">canvasToLogical</span>({

1.  <span id="canvasToLogical-param-resolution" class="parameter">required <span class="type-annotation">[GiantToadResolution](../../giant_toad/GiantToadResolution-class.md)</span> <span class="parameter-name">resolution</span>, </span>
2.  <span id="canvasToLogical-param-metrics" class="parameter">required <span class="type-annotation">[GiantToadViewportMetrics](../../giant_toad/GiantToadViewportMetrics-class.md)</span> <span class="parameter-name">metrics</span>, </span>
3.  <span id="canvasToLogical-param-canvasPosition" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasPosition</span>, </span>
4.  <span id="canvasToLogical-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Converts a physical game-canvas position to a logical-canvas position.

Returns `null` when `canvasPosition` falls in the letterbox. Supply `output` to avoid allocating a new vector when the point is in bounds.

</div>

<div>

## Implementation

``` dart
static Vector2? canvasToLogical({
  required GiantToadResolution resolution,
  required GiantToadViewportMetrics metrics,
  required Vector2 canvasPosition,
  Vector2? output,
}) {
  final x = (canvasPosition.x - metrics.offset.x) / metrics.scale;
  final y = (canvasPosition.y - metrics.offset.y) / metrics.scale;
  if (x < 0 || y < 0 || x > resolution.width || y > resolution.height) {
    return null;
  }

  final logicalPosition = output ?? Vector2.zero();
  logicalPosition.setValues(x, y);
  return logicalPosition;
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
4.  canvasToLogical static method

##### GiantToadPixelCoordinates class

<div>

</div>

</div>

<div>

</div>
