<div>

<div>

# <span class="kind-method">tick</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[GiantToadTaskStatus](../../src_gameplay_giant_toad_tasks/GiantToadTaskStatus.md)</span> <span class="name">tick</span>(

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
  _remaining -= dt;
  return _remaining <= 0
      ? GiantToadTaskStatus.succeeded
      : GiantToadTaskStatus.running;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tasks](../../src_gameplay_giant_toad_tasks/index.md)
3.  [GiantToadWaitTask<span class="signature">\<<span class="type-parameter">C</span>\></span>](../../src_gameplay_giant_toad_tasks/GiantToadWaitTask-class.md)
4.  tick method

##### GiantToadWaitTask class

<div>

</div>

</div>

<div>

</div>
