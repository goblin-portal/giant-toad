<div>

<div>

# <span class="kind-method">begin</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">begin</span>({

1.  <span id="begin-param-body" class="parameter">required <span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">body</span>, </span>
2.  <span id="begin-param-direction" class="parameter">required <span class="type-annotation">[GiantToadGridDirection](../../giant_toad/GiantToadGridDirection.md)</span> <span class="parameter-name">direction</span>, </span>
3.  <span id="begin-param-isBlocked" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isBlocked</span>(</span>
    1.  <span id="param-destination" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">destination</span></span>

    ),

})

</div>

<div>

## Implementation

``` dart
bool begin({
  required Rect body,
  required GiantToadGridDirection direction,
  required bool Function(Rect destination) isBlocked,
}) {
  if (status == GiantToadGridStepResult.moving) return false;
  final delta = switch (direction) {
    GiantToadGridDirection.up => Vector2(0, -cellSize.y),
    GiantToadGridDirection.right => Vector2(cellSize.x, 0),
    GiantToadGridDirection.down => Vector2(0, cellSize.y),
    GiantToadGridDirection.left => Vector2(-cellSize.x, 0),
  };
  final destination = body.shift(Offset(delta.x, delta.y));
  if (isBlocked(destination)) {
    status = GiantToadGridStepResult.blocked;
    return false;
  }
  _start = Vector2(body.left, body.top);
  _end = _start! + delta;
  _elapsed = 0;
  status = GiantToadGridStepResult.moving;
  return true;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadGridStepper](../../giant_toad/GiantToadGridStepper-class.md)
4.  begin method

##### GiantToadGridStepper class

<div>

</div>

</div>

<div>

</div>
