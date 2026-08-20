<div>

<div>

# <span class="kind-method">tick</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[GiantToadTaskStatus](../../giant_toad/GiantToadTaskStatus.md)</span> <span class="name">tick</span>(

1.  <span id="tick-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span>, </span>
2.  <span id="tick-param-context" class="parameter"><span class="type-annotation">C</span> <span class="parameter-name">context</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
GiantToadTaskStatus tick(double dt, C context) {
  while (index < children.length) {
    final status = children[index].tick(dt, context);
    if (status == GiantToadTaskStatus.running) return status;
    if (status == GiantToadTaskStatus.succeeded) return status;
    index++;
  }
  return GiantToadTaskStatus.failed;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSelectorTask<span class="signature">\<<span class="type-parameter">C</span>\></span>](../../giant_toad/GiantToadSelectorTask-class.md)
4.  tick method

##### GiantToadSelectorTask class

<div>

</div>

</div>

<div>

</div>
