<div>

<div>

# <span class="kind-constructor">GiantToadFloatingText</span> constructor

</div>

<div>

<span class="name">GiantToadFloatingText</span>({

1.  <span id="param-text" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">text</span>, </span>
2.  <span id="param-position" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">position</span>, </span>
3.  <span id="param-lifetime" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">lifetime</span> = <span class="default-value">0.7</span>, </span>
4.  <span id="param-velocity" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">velocity</span>, </span>
5.  <span id="param-textRenderer" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">textRenderer</span>, </span>
6.  <span id="param-priority" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">priority</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadFloatingText({
  required String text,
  required super.position,
  this.lifetime = 0.7,
  Vector2? velocity,
  super.textRenderer,
  super.priority,
}) : velocity = velocity ?? Vector2(0, -18),
     super(text: text) {
  if (lifetime <= 0) throw ArgumentError.value(lifetime, 'lifetime');
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game_feel](../../src_gameplay_giant_toad_game_feel/index.md)
3.  [GiantToadFloatingText](../../src_gameplay_giant_toad_game_feel/GiantToadFloatingText-class.md)
4.  GiantToadFloatingText.new constructor

##### GiantToadFloatingText class

<div>

</div>

</div>

<div>

</div>
