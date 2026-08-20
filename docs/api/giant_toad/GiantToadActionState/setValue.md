<div>

<div>

# <span class="kind-method">setValue</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setValue</span>(

1.  <span id="setValue-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span>, </span>
2.  <span id="setValue-param-value" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">value</span></span>

)

</div>

<div>

## Implementation

``` dart
void setValue(String control, double value) {
  if (!value.isFinite || value < -1 || value > 1) {
    throw ArgumentError.value(value, 'value', 'must be finite and in -1...1');
  }
  final actions = bindings.actionsFor(control).toList(growable: false);
  final before = {for (final action in actions) action: isPressed(action)};
  if (value == 0) {
    _values.remove(control);
  } else {
    _values[control] = value;
  }
  for (final action in actions) {
    final after = isPressed(action);
    if (!before[action]! && after) _justPressed.add(action);
    if (before[action]! && !after) _justReleased.add(action);
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionState](../../giant_toad/GiantToadActionState-class.md)
4.  setValue method

##### GiantToadActionState class

<div>

</div>

</div>

<div>

</div>
