<div>

<div>

# <span class="kind-method">findGridPath</span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadCell](../../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span>\></span></span> <span class="name">findGridPath</span>({

1.  <span id="findGridPath-param-start" class="parameter">required <span class="type-annotation">[GiantToadCell](../../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">start</span>, </span>
2.  <span id="findGridPath-param-goal" class="parameter">required <span class="type-annotation">[GiantToadCell](../../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">goal</span>, </span>
3.  <span id="findGridPath-param-bounds" class="parameter">required <span class="type-annotation">[GiantToadGridBounds](../../src_gameplay_giant_toad_pathfinding/GiantToadGridBounds-class.md)</span> <span class="parameter-name">bounds</span>, </span>
4.  <span id="findGridPath-param-isBlocked" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isBlocked</span>(</span>
    1.  <span id="contains-param-cell" class="parameter"><span class="type-annotation">[GiantToadCell](../../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="parameter-name">cell</span></span>

    ),
5.  <span id="findGridPath-param-diagonal" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">diagonal</span> = <span class="default-value">false</span>, </span>
6.  <span id="findGridPath-param-maxNodes" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">maxNodes</span>, </span>

})

</div>

<div>

Returns waypoints after `start`, including `goal`, or an empty list when no route exists. `isBlocked` must return false for walkable cells.

</div>

<div>

## Implementation

``` dart
static List<GiantToadCell> findGridPath({
  required GiantToadCell start,
  required GiantToadCell goal,
  required GiantToadGridBounds bounds,
  required bool Function(GiantToadCell cell) isBlocked,
  bool diagonal = false,
  int? maxNodes,
}) {
  if (maxNodes != null && maxNodes <= 0) {
    throw ArgumentError.value(maxNodes, 'maxNodes', 'must be positive');
  }
  if (!bounds.contains(start) || !bounds.contains(goal) || isBlocked(goal)) {
    return const [];
  }
  if (start == goal) return const [];

  final open = _MinHeap();
  final cost = <GiantToadCell, int>{start: 0};
  final parent = <GiantToadCell, GiantToadCell>{};
  open.add(_PathNode(start, 0, _distance(start, goal)));

  var visited = 0;
  while (open.isNotEmpty) {
    final current = open.removeFirst();
    if (++visited > (maxNodes ?? 0x7fffffff)) return const [];
    if (current.cost != cost[current.cell]) continue;
    if (current.cell == goal) return _reconstruct(parent, start, goal);
    for (final next in _neighbours(current.cell, diagonal: diagonal)) {
      if (!bounds.contains(next) || isBlocked(next)) continue;
      final nextCost = current.cost + 1;
      if (nextCost >= (cost[next] ?? 0x7fffffff)) continue;
      cost[next] = nextCost;
      parent[next] = current.cell;
      open.add(_PathNode(next, nextCost, nextCost + _distance(next, goal)));
    }
  }
  return const [];
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pathfinding](../../src_gameplay_giant_toad_pathfinding/index.md)
3.  [GiantToadPathfinding](../../src_gameplay_giant_toad_pathfinding/GiantToadPathfinding-class.md)
4.  findGridPath static method

##### GiantToadPathfinding class

<div>

</div>

</div>

<div>

</div>
