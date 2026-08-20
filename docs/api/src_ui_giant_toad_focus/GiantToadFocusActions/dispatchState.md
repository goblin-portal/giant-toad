<div>

<div>

# <span class="kind-method">dispatchState</span> static method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">dispatchState</span>(

1.  <span id="dispatchState-param-state" class="parameter"><span class="type-annotation">[GiantToadActionState](../../src_input_giant_toad_actions/GiantToadActionState-class.md)</span> <span class="parameter-name">state</span></span>

)

</div>

<div>

## Implementation

``` dart
static bool dispatchState(GiantToadActionState state) {
  var handled = false;
  for (final action in [
    GiantToadUiActions.next,
    GiantToadUiActions.previous,
    GiantToadUiActions.activate,
  ]) {
    if (state.justPressed(action)) handled = dispatch(action) || handled;
  }
  return handled;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_focus](../../src_ui_giant_toad_focus/index.md)
3.  [GiantToadFocusActions](../../src_ui_giant_toad_focus/GiantToadFocusActions-class.md)
4.  dispatchState static method

##### GiantToadFocusActions class

<div>

</div>

</div>

<div>

</div>
