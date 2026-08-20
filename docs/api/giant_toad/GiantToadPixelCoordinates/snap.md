<div>

<div>

# <span class="kind-method">snap</span> static method

</div>

<div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="name">snap</span>(

1.  <span id="snap-param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span>, {</span>
2.  <span id="snap-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span>, </span>

})

</div>

<div>

Snaps `position` to the nearest logical pixel.

Supply `output` to avoid allocating a new vector in per-frame code.

</div>

<div>

## Implementation

``` dart
static Vector2 snap(Vector2 position, {Vector2? output}) {
  final snapped = output ?? Vector2.zero();
  snapped.setValues(position.x.roundToDouble(), position.y.roundToDouble());
  return snapped;
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
4.  snap static method

##### GiantToadPixelCoordinates class

<div>

</div>

</div>

<div>

</div>
