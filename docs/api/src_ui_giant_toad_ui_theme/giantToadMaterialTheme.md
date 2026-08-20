<div>

<div>

# <span class="kind-function">giantToadMaterialTheme</span> function

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">giantToadMaterialTheme</span>(

1.  <span id="giantToadMaterialTheme-param-theme" class="parameter"><span class="type-annotation">[GiantToadUiTheme](../src_ui_giant_toad_ui_theme/GiantToadUiTheme-class.md)</span> <span class="parameter-name">theme</span>, {</span>
2.  <span id="giantToadMaterialTheme-param-backgroundColor" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">backgroundColor</span> = <span class="default-value">const Color(0xff11111b)</span>, </span>
3.  <span id="giantToadMaterialTheme-param-errorColor" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">errorColor</span>, </span>

})

</div>

<div>

Builds a Material host theme from Giant Toad's canonical UI tokens.

Editor applications can use standard Flutter layout and accessibility widgets without maintaining a second, visually divergent token system.

</div>

<div>

## Implementation

``` dart
ThemeData giantToadMaterialTheme(
  GiantToadUiTheme theme, {
  Color backgroundColor = const Color(0xff11111b),
  Color? errorColor,
}) {
  final scheme = ColorScheme.fromSeed(
    seedColor: theme.focusColor,
    brightness: Brightness.dark,
    surface: theme.panelColor,
    error: errorColor ?? const Color(0xffef6f6c),
  );
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.zero,
    borderSide: BorderSide(
      color: theme.panelBorderColor,
      width: theme.borderWidth,
    ),
  );
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    scaffoldBackgroundColor: backgroundColor,
    canvasColor: theme.panelColor,
    cardColor: theme.panelColor,
    dividerColor: theme.panelBorderColor,
    focusColor: theme.focusColor,
    hoverColor: theme.focusColor.withValues(alpha: 0.12),
    fontFamily: theme.fontFamily,
    iconTheme: IconThemeData(color: theme.textColor),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: theme.buttonColor,
      isDense: true,
      contentPadding: EdgeInsets.all(theme.padding),
      border: border,
      enabledBorder: border,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          color: theme.focusColor,
          width: theme.borderWidth,
        ),
      ),
    ),
    cardTheme: CardThemeData(
      color: theme.panelColor,
      margin: EdgeInsets.all(theme.displayScale * 2),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.panelBorderColor,
          width: theme.borderWidth,
        ),
        borderRadius: BorderRadius.zero,
      ),
    ),
    visualDensity: VisualDensity.compact,
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad_ui_theme](../src_ui_giant_toad_ui_theme/index.md)
3.  giantToadMaterialTheme function

##### giant_toad_ui_theme library

<div>

</div>

</div>

<div>

</div>
