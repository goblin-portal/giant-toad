<div>

<div>

# <span class="kind-method">mergedSolidRects</span> method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)</span> <span class="name">mergedSolidRects</span>({

1.  <span id="mergedSolidRects-param-minX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minX</span>, </span>
2.  <span id="mergedSolidRects-param-minY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">minY</span>, </span>
3.  <span id="mergedSolidRects-param-maxX" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxX</span>, </span>
4.  <span id="mergedSolidRects-param-maxY" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">maxY</span>, </span>

})

</div>

<div>

Merges solid tile occupancy into deterministic maximal rectangles. Useful for Flame hitboxes and for comparing sparse-grid queries against a lower-body-count collision representation.

</div>

<div>

## Implementation

``` dart
List<Rect> mergedSolidRects({
  required int minX,
  required int minY,
  required int maxX,
  required int maxY,
}) {
  if (minX > maxX || minY > maxY) return const [];
  final completed = <Rect>[];
  var active = <(int, int), Rect>{};
  final size = document.tileSize.toDouble();
  for (var y = minY; y <= maxY; y++) {
    final runs = <(int, int)>[];
    var x = minX;
    while (x <= maxX) {
      if (!solidAt(x, y)) {
        x++;
        continue;
      }
      final start = x;
      while (x <= maxX && solidAt(x, y)) {
        x++;
      }
      runs.add((start, x - start));
    }
    final next = <(int, int), Rect>{};
    for (final run in runs) {
      final previous = active.remove(run);
      next[run] = previous == null
          ? Rect.fromLTWH(run.$1 * size, y * size, run.$2 * size, size)
          : Rect.fromLTWH(
              previous.left,
              previous.top,
              previous.width,
              previous.height + size,
            );
    }
    completed.addAll(active.values);
    active = next;
  }
  completed.addAll(active.values);
  completed.sort((a, b) {
    final y = a.top.compareTo(b.top);
    return y != 0 ? y : a.left.compareTo(b.left);
  });
  return completed;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tile_collision](../../src_world_giant_toad_tile_collision/index.md)
3.  [GiantToadTileCollision](../../src_world_giant_toad_tile_collision/GiantToadTileCollision-class.md)
4.  mergedSolidRects method

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
