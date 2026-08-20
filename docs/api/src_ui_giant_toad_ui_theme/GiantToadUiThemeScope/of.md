<div>

<div>

# <span class="kind-method">of</span> static method

</div>

<div>

<span class="returntype">[GiantToadUiTheme](../../src_ui_giant_toad_ui_theme/GiantToadUiTheme-class.md)</span> <span class="name">of</span>(

1.  <span id="of-param-context" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">context</span></span>

)

</div>

<div>

## Implementation

``` dart
static GiantToadUiTheme of(BuildContext context) =>
    context
        .dependOnInheritedWidgetOfExactType<_GiantToadUiThemeInherited>()
        ?.theme ??
    const GiantToadUiTheme();
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_ui_theme](../../src_ui_giant_toad_ui_theme/index.md)
3.  [GiantToadUiThemeScope](../../src_ui_giant_toad_ui_theme/GiantToadUiThemeScope-class.md)
4.  of static method

##### GiantToadUiThemeScope class

<div>

</div>

</div>

<div>

</div>
