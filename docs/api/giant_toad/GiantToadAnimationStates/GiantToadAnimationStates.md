<div>

<div>

# <span class="kind-constructor">GiantToadAnimationStates\<<span class="type-parameter">T</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadAnimationStates\<<span class="type-parameter">T</span>\></span>({

1.  <span id="param-animations" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">T</span>, <span class="type-parameter">[SpriteAnimation](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimation-class.md)</span>\></span></span> <span class="parameter-name">animations</span>, </span>
2.  <span id="param-initial" class="parameter">required <span class="type-annotation">T</span> <span class="parameter-name">initial</span>, </span>
3.  <span id="param-frameEvents" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">T</span>, <span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>, <span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="parameter-name">frameEvents</span> = <span class="default-value">const {}</span>, </span>
4.  <span id="param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span>
5.  <span id="param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span>
6.  <span id="param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)?</span> <span class="parameter-name">anchor</span>, </span>
7.  <span id="param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span>, </span>
8.  <span id="param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span> <span class="parameter-name">key</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadAnimationStates({
  required Map<T, SpriteAnimation> animations,
  required T initial,
  this.frameEvents = const {},
  super.position,
  super.size,
  super.anchor,
  super.priority,
  super.key,
}) : super(
       animations: animations,
       current: initial,
       autoResize: size == null,
     ) {
  paint
    ..isAntiAlias = false
    ..filterQuality = FilterQuality.none;
  _wire(initial);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAnimationStates<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad/GiantToadAnimationStates-class.md)
4.  GiantToadAnimationStates.new constructor

##### GiantToadAnimationStates class

<div>

</div>

</div>

<div>

</div>
