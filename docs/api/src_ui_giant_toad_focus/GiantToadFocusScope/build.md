<div>

<div>

# <span class="kind-method">build</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">dynamic</span> <span class="name">build</span>(

1.  <span id="build-param-context" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">context</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
Widget build(BuildContext context) => FocusTraversalGroup(
  policy: WidgetOrderTraversalPolicy(),
  child: Shortcuts(
    shortcuts: {
      SingleActivator(LogicalKeyboardKey.arrowDown): NextFocusIntent(),
      SingleActivator(LogicalKeyboardKey.arrowUp): PreviousFocusIntent(),
      SingleActivator(LogicalKeyboardKey.tab): NextFocusIntent(),
      SingleActivator(LogicalKeyboardKey.tab, shift: true):
          PreviousFocusIntent(),
    },
    child: child,
  ),
);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_focus](../../src_ui_giant_toad_focus/index.md)
3.  [GiantToadFocusScope](../../src_ui_giant_toad_focus/GiantToadFocusScope-class.md)
4.  build method

##### GiantToadFocusScope class

<div>

</div>

</div>

<div>

</div>
