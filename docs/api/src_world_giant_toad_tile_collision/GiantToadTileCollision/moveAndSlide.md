<div>

<div>

# <span class="kind-method">moveAndSlide</span> method

</div>

<div>

<span class="returntype">[GiantToadTileMoveResult](../../src_world_giant_toad_tile_collision/GiantToadTileMoveResult-class.md)</span> <span class="name">moveAndSlide</span>(

1.  <span id="moveAndSlide-param-body" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">body</span>, </span>
2.  <span id="moveAndSlide-param-delta" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">delta</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadTileMoveResult moveAndSlide(Rect body, Vector2 delta) {
  var x = body.left;
  var y = body.top;
  var dx = delta.x;
  var dy = delta.y;
  var hitLeft = false;
  var hitRight = false;
  var hitTop = false;
  var hitBottom = false;
  final tileSize = document.tileSize.toDouble();

  if (dx != 0) {
    final startColumn = dx > 0
        ? ((body.right - 1e-9) / tileSize).floor()
        : (body.left / tileSize).floor();
    final endEdge = dx > 0 ? body.right + dx - 1e-9 : body.left + dx;
    final endColumn = (endEdge / tileSize).floor();
    final minY = (body.top / tileSize).floor();
    final maxY = ((body.bottom - 1e-9) / tileSize).floor();
    final step = dx > 0 ? 1 : -1;
    for (
      var column = startColumn + step;
      dx > 0 ? column <= endColumn : column >= endColumn;
      column += step
    ) {
      if ([
        for (var row = minY; row <= maxY; row++) solidAt(column, row),
      ].contains(true)) {
        dx = dx > 0
            ? math.min(dx, column * tileSize - body.right)
            : math.max(dx, (column + 1) * tileSize - body.left);
        hitRight = step > 0;
        hitLeft = step < 0;
        break;
      }
    }
    x += dx;
  }

  final movedX = Rect.fromLTWH(x, y, body.width, body.height);
  if (dy != 0) {
    final startRow = dy > 0
        ? ((movedX.bottom - 1e-9) / tileSize).floor()
        : (movedX.top / tileSize).floor();
    final endEdge = dy > 0 ? movedX.bottom + dy - 1e-9 : movedX.top + dy;
    final endRow = (endEdge / tileSize).floor();
    final minX = (movedX.left / tileSize).floor();
    final maxX = ((movedX.right - 1e-9) / tileSize).floor();
    final step = dy > 0 ? 1 : -1;
    for (
      var row = startRow + step;
      dy > 0 ? row <= endRow : row >= endRow;
      row += step
    ) {
      double? surface;
      for (var column = minX; column <= maxX; column++) {
        final material = materialAt(column, row);
        if (dy < 0 && material == GiantToadTileMaterial.solid) {
          surface = (row + 1) * tileSize;
          break;
        }
        if (dy <= 0) continue;
        final tileTop = row * tileSize;
        final candidate = switch (material) {
          GiantToadTileMaterial.solid => tileTop,
          GiantToadTileMaterial.oneWayUp
              when movedX.bottom <= tileTop + 1e-9 =>
            tileTop,
          GiantToadTileMaterial.slopeUpRight =>
            (row + 1) * tileSize -
                ((movedX.center.dx - column * tileSize).clamp(
                  0,
                  tileSize,
                )).toDouble(),
          GiantToadTileMaterial.slopeUpLeft =>
            tileTop +
                ((movedX.center.dx - column * tileSize).clamp(
                  0,
                  tileSize,
                )).toDouble(),
          _ => null,
        };
        if (candidate != null &&
            movedX.bottom <= candidate + 1e-9 &&
            movedX.bottom + dy >= candidate) {
          surface = surface == null
              ? candidate
              : math.min(surface, candidate);
        }
      }
      if (surface != null) {
        dy = dy > 0
            ? math.min(dy, surface - movedX.bottom)
            : math.max(dy, surface - movedX.top);
        hitBottom = step > 0;
        hitTop = step < 0;
        break;
      }
    }
    y += dy;
  }

  return GiantToadTileMoveResult(
    position: Vector2(x, y),
    applied: Vector2(dx, dy),
    hitLeft: hitLeft,
    hitRight: hitRight,
    hitTop: hitTop,
    hitBottom: hitBottom,
  );
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
4.  moveAndSlide method

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
