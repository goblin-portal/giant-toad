<div>

<div>

# <span class="kind-constructor">GiantToadViewportMetrics.expand</span> constructor

</div>

<div>

<span class="name">GiantToadViewportMetrics.expand</span>({

1.  <span id="expand-param-canvasSize" class="parameter">required <span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">canvasSize</span>, </span>
2.  <span id="expand-param-pixelScale" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span>, </span>

})

</div>

<div>

Calculates expansion at an authored integer scale.

</div>

<div>

## Implementation

``` dart
factory GiantToadViewportMetrics.expand({
  required Vector2 canvasSize,
  required int pixelScale,
}) {
  if (pixelScale < 1) {
    throw ArgumentError.value(pixelScale, 'pixelScale', 'must be positive');
  }
  return GiantToadViewportMetrics._(
    scale: pixelScale.toDouble(),
    size: canvasSize.clone(),
    offset: Vector2.zero(),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadViewportMetrics](../../giant_toad/GiantToadViewportMetrics-class.md)
4.  GiantToadViewportMetrics.expand factory constructor

##### GiantToadViewportMetrics class

<div>

</div>

</div>

<div>

</div>
