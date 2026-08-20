<div>

<div>

# <span class="kind-method">disconnectGamepad</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">disconnectGamepad</span>(

1.  <span id="disconnectGamepad-param-gamepad" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">gamepad</span></span>

)

</div>

<div>

Releases controls owned by a disconnected physical controller.

</div>

<div>

## Implementation

``` dart
void disconnectGamepad(int gamepad) {
  for (final control
      in _gamepadControls.remove(gamepad) ?? const <String>{}) {
    state.release(control);
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_action_input](../../src_input_giant_toad_action_input/index.md)
3.  [GiantToadActionInput](../../src_input_giant_toad_action_input/GiantToadActionInput-class.md)
4.  disconnectGamepad method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
