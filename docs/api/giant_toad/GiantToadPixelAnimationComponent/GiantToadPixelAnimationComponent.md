<div>

<div>

# <span class="kind-constructor">GiantToadPixelAnimationComponent</span> constructor

</div>

<div>

<span class="name">GiantToadPixelAnimationComponent</span>({

1.  <span id="param-animation" class="parameter"><span class="type-annotation">[SpriteAnimation](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimation-class.md)?</span> <span class="parameter-name">animation</span>, </span>
2.  <span id="param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span>
3.  <span id="param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span>
4.  <span id="param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)?</span> <span class="parameter-name">anchor</span>, </span>
5.  <span id="param-angle" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)?</span> <span class="parameter-name">angle</span>, </span>
6.  <span id="param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span>, </span>
7.  <span id="param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span> <span class="parameter-name">key</span>, </span>
8.  <span id="param-sampling" class="parameter"><span class="type-annotation">[GiantToadSampling](../../giant_toad/GiantToadSampling.md)</span> <span class="parameter-name">sampling</span> = <span class="default-value">GiantToadSampling.pixelPerfect</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelAnimationComponent({
  super.animation,
  super.position,
  super.size,
  super.anchor,
  super.angle,
  super.priority,
  super.key,
  this.sampling = GiantToadSampling.pixelPerfect,
}) {
  configureSampling(sampling);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelAnimationComponent](../../giant_toad/GiantToadPixelAnimationComponent-class.md)
4.  GiantToadPixelAnimationComponent.new constructor

##### GiantToadPixelAnimationComponent class

<div>

</div>

</div>

<div>

</div>
