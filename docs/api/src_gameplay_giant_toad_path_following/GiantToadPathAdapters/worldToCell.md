<div>

<div>

# <span class="kind-method">worldToCell</span> static method

</div>

<div>

<span class="returntype">[GiantToadCell](../../src_gameplay_giant_toad_pathfinding/GiantToadCell-class.md)</span> <span class="name">worldToCell</span>(

1.  <span id="worldToCell-param-point" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">point</span>, </span>
2.  <span id="worldToCell-param-map" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)</span> <span class="parameter-name">map</span></span>

)

</div>

<div>

## Implementation

``` dart
static GiantToadCell worldToCell(Vector2 point, GiantToadMapDocument map) =>
    GiantToadCell(
      (point.x / map.tileSize).floor(),
      (point.y / map.tileSize).floor(),
    );
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_path_following](../../src_gameplay_giant_toad_path_following/index.md)
3.  [GiantToadPathAdapters](../../src_gameplay_giant_toad_path_following/GiantToadPathAdapters-class.md)
4.  worldToCell static method

##### GiantToadPathAdapters class

<div>

</div>

</div>

<div>

</div>
