<div>

<div>

# <span class="kind-method">gamepadAxis</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">gamepadAxis</span>(

1.  <span id="gamepadAxis-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span>, </span>
2.  <span id="gamepadAxis-param-axis" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">axis</span>, </span>
3.  <span id="gamepadAxis-param-value" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">value</span></span>

)

</div>

<div>

## Implementation

``` dart
void gamepadAxis(int gamepad, String axis, double value) {
  final positive = GiantToadControl.gamepadAxis(
    gamepad,
    axis,
    positive: true,
  );
  final negative = GiantToadControl.gamepadAxis(
    gamepad,
    axis,
    positive: false,
  );
  _rememberGamepadControl(gamepad, positive);
  _rememberGamepadControl(gamepad, negative);
  _axis(positive, negative, value);
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
4.  gamepadAxis method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
