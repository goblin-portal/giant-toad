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
  return TextField(
    controller: controller,
    focusNode: focusNode,
    enabled: enabled,
    maxLines: maxLines,
    onChanged: onChanged,
    onSubmitted: onSubmitted,
    style: TextStyle(color: theme.textColor, fontFamily: theme.fontFamily),
    cursorColor: theme.focusColor,
    cursorWidth: theme.displayScale,
    decoration: InputDecoration(
      hintText: label,
      hintStyle: TextStyle(color: theme.disabledColor),
      filled: true,
      fillColor: theme.buttonColor,
      isDense: true,
      contentPadding: EdgeInsets.all(theme.padding),
      border: _border(theme.panelBorderColor, theme.borderWidth),
      focusedBorder: _border(theme.focusColor, theme.borderWidth),
      disabledBorder: _border(theme.disabledColor, theme.borderWidth),
    ),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_controls](../../src_ui_giant_toad_controls/index.md)
3.  [GiantToadTextField](../../src_ui_giant_toad_controls/GiantToadTextField-class.md)
4.  build method

##### GiantToadTextField class

<div>

</div>

</div>

<div>

</div>
