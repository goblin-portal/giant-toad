<div>

<div>

# <span class="kind-method">gamepadButton</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">gamepadButton</span>(

1.  <span id="gamepadButton-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span>, </span>
2.  <span id="gamepadButton-param-button" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">button</span>, {</span>
3.  <span id="gamepadButton-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void gamepadButton(int gamepad, String button, {required bool pressed}) {
  final control = GiantToadControl.gamepadButton(gamepad, button);
  _rememberGamepadControl(gamepad, control);
  _digital(control, pressed);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionInput](../../giant_toad/GiantToadActionInput-class.md)
4.  gamepadButton method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
