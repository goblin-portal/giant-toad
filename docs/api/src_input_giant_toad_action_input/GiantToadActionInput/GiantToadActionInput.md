<div>

<div>

# <span class="kind-constructor">GiantToadActionInput</span> constructor

</div>

<div>

<span class="name">GiantToadActionInput</span>(

1.  <span id="param-state" class="parameter"><span class="type-annotation">[GiantToadActionState](../../src_input_giant_toad_actions/GiantToadActionState-class.md)</span> <span class="parameter-name">state</span>, {</span>
2.  <span id="param-axisDeadzone" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">axisDeadzone</span> = <span class="default-value">0.2</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadActionInput(this.state, {this.axisDeadzone = 0.2}) {
  if (axisDeadzone < 0 || axisDeadzone >= 1) {
    throw ArgumentError.value(
      axisDeadzone,
      'axisDeadzone',
      'must be in 0...1',
    );
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
4.  GiantToadActionInput.new constructor

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
