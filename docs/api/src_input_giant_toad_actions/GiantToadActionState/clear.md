<div>

<div>

# <span class="kind-method">clear</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">clear</span>()

</div>

<div>

## Implementation

``` dart
void clear() {
  final active = <GiantToadAction>{
    for (final control in _values.keys) ...bindings.actionsFor(control),
  };
  _values.clear();
  _justReleased.addAll(active);
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
4.  clear method

##### GiantToadActionState class

<div>

</div>

</div>

<div>

</div>
