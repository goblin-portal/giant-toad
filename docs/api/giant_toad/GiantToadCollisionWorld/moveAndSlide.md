<div>

<div>

# <span class="kind-method">moveAndSlide</span> method

</div>

<div>

<span class="returntype">[GiantToadWorldMoveResult](../../giant_toad/GiantToadWorldMoveResult-class.md)</span> <span class="name">moveAndSlide</span>(

1.  <span id="moveAndSlide-param-body" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">body</span>, </span>
2.  <span id="moveAndSlide-param-delta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">delta</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadWorldMoveResult moveAndSlide(Rect body, Vector2 delta) {
  var dx = delta.x;
  var dy = delta.y;
  var moved = body;
  final hits = <GiantToadWorldHit>[];
  for (final collider in _colliders.where((entry) => !entry.trigger)) {
    if (!_overlapsAxis(
      body.top,
      body.bottom,
      collider.bounds.top,
      collider.bounds.bottom,
    )) {
      continue;
    }
    if (dx > 0 &&
        body.right <= collider.bounds.left &&
        body.right + dx > collider.bounds.left) {
      dx = math.min(dx, collider.bounds.left - body.right);
      hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(-1, 0)));
    } else if (dx < 0 &&
        body.left >= collider.bounds.right &&
        body.left + dx < collider.bounds.right) {
      dx = math.max(dx, collider.bounds.right - body.left);
      hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(1, 0)));
    }
  }
  moved = body.shift(Offset(dx, 0));
  for (final collider in _colliders.where((entry) => !entry.trigger)) {
    if (!_overlapsAxis(
      moved.left,
      moved.right,
      collider.bounds.left,
      collider.bounds.right,
    )) {
      continue;
    }
    if (dy > 0 &&
        moved.bottom <= collider.bounds.top &&
        moved.bottom + dy > collider.bounds.top) {
      dy = math.min(dy, collider.bounds.top - moved.bottom);
      hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(0, -1)));
    } else if (dy < 0 &&
        moved.top >= collider.bounds.bottom &&
        moved.top + dy < collider.bounds.bottom) {
      dy = math.max(dy, collider.bounds.bottom - moved.top);
      hits.add(GiantToadWorldHit(collider: collider, normal: Vector2(0, 1)));
    }
  }
  moved = moved.shift(Offset(0, dy));
  return GiantToadWorldMoveResult(
    bounds: moved,
    applied: Vector2(dx, dy),
    hits: List.unmodifiable(hits),
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
3.  [GiantToadCollisionWorld](../../giant_toad/GiantToadCollisionWorld-class.md)
4.  moveAndSlide method

##### GiantToadCollisionWorld class

<div>

</div>

</div>

<div>

</div>
