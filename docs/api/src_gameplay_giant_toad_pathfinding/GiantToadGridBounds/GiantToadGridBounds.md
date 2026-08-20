<div>

<div>

# <span class="kind-constructor">GiantToadGridBounds</span> constructor

</div>

<div>

const <span class="name">GiantToadGridBounds</span>({

1.  <span id="param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span>
2.  <span id="param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span>
3.  <span id="param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span>
4.  <span id="param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span>, </span>

})

</div>

<div>

## Implementation

``` dart
const GiantToadGridBounds({
  required this.minX,
  required this.minY,
  required this.maxX,
  required this.maxY,
}) : assert(minX <= maxX),
     assert(minY <= maxY);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pathfinding](../../src_gameplay_giant_toad_pathfinding/index.md)
3.  [GiantToadGridBounds](../../src_gameplay_giant_toad_pathfinding/GiantToadGridBounds-class.md)
4.  GiantToadGridBounds.new const constructor

##### GiantToadGridBounds class

<div>

</div>

</div>

<div>

</div>
