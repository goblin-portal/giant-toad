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
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(
      color: theme.panelBorderColor,
      width: theme.borderWidth,
    ),
  );
  return TextFormField(
    controller: controller,
    initialValue: controller == null ? initialValue : null,
    focusNode: focusNode,
    decoration: decoration.copyWith(
      filled: decoration.filled ?? true,
      fillColor: decoration.fillColor ?? theme.buttonColor,
      isDense: decoration.isDense ?? true,
      border: decoration.border ?? border,
      enabledBorder: decoration.enabledBorder ?? border,
      focusedBorder:
          decoration.focusedBorder ??
          border.copyWith(
            borderSide: BorderSide(
              color: theme.focusColor,
              width: theme.borderWidth,
            ),
          ),
    ),
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    onChanged: onChanged,
    onFieldSubmitted: onFieldSubmitted ?? onSubmitted,
    validator: validator,
    enabled: enabled,
    readOnly: readOnly,
    maxLines: maxLines,
    minLines: minLines,
    autofocus: autofocus,
    textInputAction: textInputAction,
    style: TextStyle(color: theme.textColor, fontFamily: theme.fontFamily),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_editor_controls](../../src_ui_giant_toad_editor_controls/index.md)
3.  [GiantToadFormField](../../src_ui_giant_toad_editor_controls/GiantToadFormField-class.md)
4.  build method

##### GiantToadFormField class

<div>

</div>

</div>

<div>

</div>
