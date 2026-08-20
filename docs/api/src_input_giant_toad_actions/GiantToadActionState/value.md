<div>

<div>

# <span class="kind-method">value</span> method

</div>

<div>

<span class="returntype">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="name">value</span>(

1.  <span id="value-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>

)

</div>

<div>

## Implementation

``` dart
double value(GiantToadAction action) {
  var result = 0.0;
  for (final control in bindings.controlsFor(action)) {
    final candidate = controlValue(control);
    if (candidate.abs() > result.abs()) result = candidate;
  }
  return result;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_actions](../../src_input_giant_toad_actions/index.md)
3.  [GiantToadActionState](../../src_input_giant_toad_actions/GiantToadActionState-class.md)
4.  value method

##### GiantToadActionState class

<div>

</div>

</div>

<div>

</div>
