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
Widget build(BuildContext context) => Row(
  children: [
    for (var index = 0; index < tabs.length; index++)
      Expanded(
        child: GiantToadPixelButton(
          label: tabs[index],
          selected: index == selected,
          onPressed: () => onSelected(index),
        ),
      ),
  ],
);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_controls](../../src_ui_giant_toad_controls/index.md)
3.  [GiantToadTabs](../../src_ui_giant_toad_controls/GiantToadTabs-class.md)
4.  build method

##### GiantToadTabs class

<div>

</div>

</div>

<div>

</div>
