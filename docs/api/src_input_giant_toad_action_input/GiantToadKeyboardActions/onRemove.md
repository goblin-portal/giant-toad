<div>

<div>

# <span class="kind-method">onRemove</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onRemove</span>()

</div>

<div>

## Implementation

``` dart
@override
void onRemove() {
  for (final key in _previous) {
    input.keyboard(key, pressed: false);
  }
  _previous = const {};
  super.onRemove();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_action_input](../../src_input_giant_toad_action_input/index.md)
3.  [GiantToadKeyboardActions](../../src_input_giant_toad_action_input/GiantToadKeyboardActions-class.md)
4.  onRemove method

##### GiantToadKeyboardActions class

<div>

</div>

</div>

<div>

</div>
