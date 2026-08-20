<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
Vector2 update(double dt) {
  if (status != GiantToadGridStepResult.moving) {
    return (_end ?? _start ?? Vector2.zero()).clone();
  }
  _elapsed += dt;
  final seconds = duration.inMicroseconds / Duration.microsecondsPerSecond;
  final t = (_elapsed / seconds).clamp(0.0, 1.0);
  final position = _start! + (_end! - _start!) * t;
  if (t >= 1) {
    position.setValues(
      position.x.roundToDouble(),
      position.y.roundToDouble(),
    );
    status = GiantToadGridStepResult.completed;
  }
  return position;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_grid_step](../../src_gameplay_giant_toad_grid_step/index.md)
3.  [GiantToadGridStepper](../../src_gameplay_giant_toad_grid_step/GiantToadGridStepper-class.md)
4.  update method

##### GiantToadGridStepper class

<div>

</div>

</div>

<div>

</div>
