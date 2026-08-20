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
  final theme = GiantToadUiThemeScope.of(context);
  return Icon(icon, size: size ?? 16, color: theme.textColor);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_icon](../../src_ui_giant_toad_icon/index.md)
3.  [GiantToadIcon](../../src_ui_giant_toad_icon/GiantToadIcon-class.md)
4.  build method

##### GiantToadIcon class

<div>

</div>

</div>

<div>

</div>
