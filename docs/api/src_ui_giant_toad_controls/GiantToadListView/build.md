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
    container: true,
    label: 'Selectable list',
    child: ListView.builder(
      controller: controller,
      itemExtent: 18 * theme.displayScale,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final isSelected = item == selected;
        return Semantics(
          selected: isSelected,
          button: true,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => onSelected(item),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isSelected
                    ? theme.buttonPressedColor
                    : theme.buttonColor,
                border: Border.all(
                  color: isSelected
                      ? theme.focusColor
                      : theme.panelBorderColor,
                  width: theme.borderWidth,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: theme.padding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(labelFor?.call(item) ?? '$item'),
                ),
              ),
            ),
          ),
        );
      },
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
3.  [GiantToadListView<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_ui_giant_toad_controls/GiantToadListView-class.md)
4.  build method

##### GiantToadListView class

<div>

</div>

</div>

<div>

</div>
