<div>

<div>

# <span class="kind-method">dispatch</span> static method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">dispatch</span>(

1.  <span id="dispatch-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../../src_input_giant_toad_actions/GiantToadAction-class.md)</span> <span class="parameter-name">action</span></span>

)

</div>

<div>

## Implementation

``` dart
static bool dispatch(GiantToadAction action) {
  final focus = FocusManager.instance.primaryFocus;
  if (action == GiantToadUiActions.next) return focus?.nextFocus() ?? false;
  if (action == GiantToadUiActions.previous) {
    return focus?.previousFocus() ?? false;
  }
  if (action == GiantToadUiActions.activate) {
    final context = focus?.context;
    if (context == null) return false;
    Actions.invoke(context, const ActivateIntent());
    return true;
  }
  return false;
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
4.  dispatch static method

##### GiantToadFocusActions class

<div>

</div>

</div>

<div>

</div>
