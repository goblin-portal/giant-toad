<div>

<div>

# <span class="kind-method">worldToCell</span> static method

</div>

<div>

<span class="returntype">[GiantToadCell](../../giant_toad/GiantToadCell-class.md)</span> <span class="name">worldToCell</span>(

1.  <span id="worldToCell-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, </span>
2.  <span id="worldToCell-param-map" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">map</span></span>

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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPathAdapters](../../giant_toad/GiantToadPathAdapters-class.md)
4.  worldToCell static method

##### GiantToadPathAdapters class

<div>

</div>

</div>

<div>

</div>
