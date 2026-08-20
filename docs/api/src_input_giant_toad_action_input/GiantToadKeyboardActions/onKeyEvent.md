<div>

<div>

# <span class="kind-method">onKeyEvent</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">onKeyEvent</span>(

1.  <span id="onKeyEvent-param-event" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">event</span>, </span>
2.  <span id="onKeyEvent-param-keysPressed" class="parameter"><span class="type-annotation">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)</span> <span class="parameter-name">keysPressed</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
  for (final key in _previous.difference(keysPressed)) {
    input.keyboard(key, pressed: false);
  }
  for (final key in keysPressed.difference(_previous)) {
    input.keyboard(key, pressed: true);
  }
  _previous = Set.unmodifiable(keysPressed);
  return false;
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
4.  onKeyEvent method

##### GiantToadKeyboardActions class

<div>

</div>

</div>

<div>

</div>
