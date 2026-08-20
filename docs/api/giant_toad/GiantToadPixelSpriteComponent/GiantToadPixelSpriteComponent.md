<div>

<div>

# <span class="kind-constructor">GiantToadPixelSpriteComponent</span> constructor

</div>

<div>

<span class="name">GiantToadPixelSpriteComponent</span>({

1.  <span id="param-sprite" class="parameter"><span class="type-annotation">[Sprite](https://pub.dev/documentation/flame/1.38.0/sprite/Sprite-class.md)?</span> <span class="parameter-name">sprite</span>, </span>
2.  <span id="param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span>
3.  <span id="param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span>
4.  <span id="param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)?</span> <span class="parameter-name">anchor</span>, </span>
5.  <span id="param-angle" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)?</span> <span class="parameter-name">angle</span>, </span>
6.  <span id="param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span>, </span>
7.  <span id="param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span> <span class="parameter-name">key</span>, </span>
8.  <span id="param-sampling" class="parameter"><span class="type-annotation">[GiantToadSampling](../../giant_toad/GiantToadSampling.md)?</span> <span class="parameter-name">sampling</span>, </span>
9.  <span id="param-snapPosition" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">snapPosition</span> = <span class="default-value">true</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelSpriteComponent({
  super.sprite,
  super.position,
  super.size,
  super.anchor,
  super.angle,
  super.priority,
  super.key,
  GiantToadSampling? sampling,
  bool snapPosition = true,
}) : sampling =
         sampling ??
         (snapPosition
             ? GiantToadSampling.pixelPerfect
             : GiantToadSampling.crispTransform) {
  configureSampling(this.sampling);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelSpriteComponent](../../giant_toad/GiantToadPixelSpriteComponent-class.md)
4.  GiantToadPixelSpriteComponent.new constructor

##### GiantToadPixelSpriteComponent class

<div>

</div>

</div>

<div>

</div>
