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
  return Semantics(
    checked: value,
    enabled: onChanged != null,
    label: label,
    child: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onChanged == null ? null : () => onChanged!(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 18 * theme.displayScale,
            height: 18 * theme.displayScale,
            decoration: BoxDecoration(
              color: theme.buttonColor,
              border: Border.all(
                color: theme.panelBorderColor,
                width: theme.borderWidth,
              ),
            ),
            alignment: Alignment.center,
            child: value
                ? Text(
                    '×',
                    style: TextStyle(color: theme.focusColor, height: 1),
                  )
                : null,
          ),
          SizedBox(width: 6 * theme.displayScale),
          Text(label),
        ],
      ),
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
3.  [GiantToadCheckbox](../../src_ui_giant_toad_controls/GiantToadCheckbox-class.md)
4.  build method

##### GiantToadCheckbox class

<div>

</div>

</div>

<div>

</div>
