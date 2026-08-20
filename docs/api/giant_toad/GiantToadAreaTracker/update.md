<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">[GiantToadAreaChange](../../giant_toad/GiantToadAreaChange-class.md)</span> <span class="name">update</span>(

1.  <span id="update-param-cellX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellX</span>, </span>
2.  <span id="update-param-cellY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellY</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadAreaChange update(int cellX, int cellY) {
  final now = {
    for (final area in document.areas)
      if (area.containsCell(cellX, cellY)) area.id,
  };
  final enteredIds = now.difference(_active);
  final exitedIds = _active.difference(now);
  _active = now;
  return GiantToadAreaChange(
    entered: [
      for (final area in document.areas)
        if (enteredIds.contains(area.id)) area,
    ],
    exited: [
      for (final area in document.areas)
        if (exitedIds.contains(area.id)) area,
    ],
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAreaTracker](../../giant_toad/GiantToadAreaTracker-class.md)
4.  update method

##### GiantToadAreaTracker class

<div>

</div>

</div>

<div>

</div>
