<div>

<div>

# <span class="kind-method">globalToLocal</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">dynamic</span> <span class="name">globalToLocal</span>(

1.  <span id="globalToLocal-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span>, {</span>
2.  <span id="globalToLocal-param-output" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">output</span>, </span>

})

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
2.  [giant_toad_pixel_viewport](../../src_giant_toad_pixel_viewport/index.md)
3.  [GiantToadPixelViewport](../../src_giant_toad_pixel_viewport/GiantToadPixelViewport-class.md)
4.  globalToLocal method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
