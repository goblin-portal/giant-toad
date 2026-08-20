<div>

<div>

# <span class="kind-property">facingLeft</span> property

</div>

<div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> get <span class="name">facingLeft</span>

</div>

<div>

## Implementation

``` dart
bool get facingLeft => scale.x < 0;
```

</div>

</div>

<div>

<div>

set <span class="name">facingLeft</span> <span class="signature">(<span id="facingLeft=-param-value" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">value</span></span>)</span>

</div>

<div>

## Implementation

``` dart
set facingLeft(bool value) {
  final magnitude = scale.x.abs();
  scale.x = value ? -magnitude : magnitude;
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_animation_states](../../src_render_giant_toad_animation_states/index.md)
3.  [GiantToadAnimationStates<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_render_giant_toad_animation_states/GiantToadAnimationStates-class.md)
4.  facingLeft property

##### GiantToadAnimationStates class

<div>

</div>

</div>

<div>

</div>
