<div>

<div>

# <span class="kind-method">containsCell</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">containsCell</span>(

1.  <span id="containsCell-param-cellX" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellX</span>, </span>
2.  <span id="containsCell-param-cellY" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">cellY</span></span>

)

</div>

<div>

## Implementation

``` dart
bool containsCell(int cellX, int cellY) =>
    cellX >= x && cellX < x + width && cellY >= y && cellY < y + height;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_area_document](../../src_tilemap_giant_toad_area_document/index.md)
3.  [GiantToadMapArea](../../src_tilemap_giant_toad_area_document/GiantToadMapArea-class.md)
4.  containsCell method

##### GiantToadMapArea class

<div>

</div>

</div>

<div>

</div>
