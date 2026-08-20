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
Widget build(BuildContext context) {
  final button = Semantics(
    button: true,
    label: tooltip,
    child: GiantToadPixelButton(
      onPressed: onPressed,
      selected: selected,
      child: GiantToadIcon(icon),
    ),
  );
  return tooltip == null ? button : Tooltip(message: tooltip!, child: button);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_menu](../../src_ui_giant_toad_menu/index.md)
3.  [GiantToadIconButton](../../src_ui_giant_toad_menu/GiantToadIconButton-class.md)
4.  build method

##### GiantToadIconButton class

<div>

</div>

</div>

<div>

</div>
