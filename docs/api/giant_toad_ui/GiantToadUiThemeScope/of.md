<div>

<div>

# <span class="kind-method">of</span> static method

</div>

<div>

<span class="returntype">[GiantToadUiTheme](../../giant_toad_ui/GiantToadUiTheme-class.md)</span> <span class="name">of</span>(

1.  <span id="of-param-context" class="parameter"><span class="type-annotation">[BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md)</span> <span class="parameter-name">context</span></span>

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
2.  [giant_toad_ui](../../giant_toad_ui/index.md)
3.  [GiantToadUiThemeScope](../../giant_toad_ui/GiantToadUiThemeScope-class.md)
4.  of static method

##### GiantToadUiThemeScope class

<div>

</div>

</div>

<div>

</div>
