<div>

<div>

# <span class="kind-method">blockedByTiles</span> static method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md) Function<span class="signature">(<span id="param-" class="parameter"><span class="type-annotation">[GiantToadCell](../../giant_toad/GiantToadCell-class.md)</span></span>)</span></span> <span class="name">blockedByTiles</span>(

1.  <span id="blockedByTiles-param-collision" class="parameter"><span class="type-annotation">[GiantToadTileCollision](../../giant_toad/GiantToadTileCollision-class.md)</span> <span class="parameter-name">collision</span></span>

)

</div>

<div>

## Implementation

``` dart
static bool Function(GiantToadCell) blockedByTiles(
  GiantToadTileCollision collision,
) =>
    (cell) => collision.solidAt(cell.x, cell.y);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPathAdapters](../../giant_toad/GiantToadPathAdapters-class.md)
4.  blockedByTiles static method

##### GiantToadPathAdapters class

<div>

</div>

</div>

<div>

</div>
