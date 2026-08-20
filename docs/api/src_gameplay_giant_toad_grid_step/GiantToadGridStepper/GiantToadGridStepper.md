<div>

<div>

# <span class="kind-constructor">GiantToadGridStepper</span> constructor

</div>

<div>

<span class="name">GiantToadGridStepper</span>({

1.  <span id="param-cellSize" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">cellSize</span>, </span>
2.  <span id="param-duration" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">duration</span> = <span class="default-value">const Duration(milliseconds: 150)</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadGridStepper({
  required this.cellSize,
  this.duration = const Duration(milliseconds: 150),
}) : assert(cellSize.x > 0 && cellSize.y > 0),
     assert(duration > Duration.zero);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_grid_step](../../src_gameplay_giant_toad_grid_step/index.md)
3.  [GiantToadGridStepper](../../src_gameplay_giant_toad_grid_step/GiantToadGridStepper-class.md)
4.  GiantToadGridStepper.new constructor

##### GiantToadGridStepper class

<div>

</div>

</div>

<div>

</div>
