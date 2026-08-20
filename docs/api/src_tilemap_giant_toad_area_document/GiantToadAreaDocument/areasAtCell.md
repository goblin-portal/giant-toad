<div>

<div>

# <span class="kind-method">areasAtCell</span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapArea](../../src_tilemap_giant_toad_area_document/GiantToadMapArea-class.md)</span>\></span></span> <span class="name">areasAtCell</span>(

1.  <span id="areasAtCell-param-x" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
2.  <span id="areasAtCell-param-y" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span></span>

)

</div>

<div>

## Implementation

``` dart
Iterable<GiantToadMapArea> areasAtCell(int x, int y) =>
    areas.where((area) => area.containsCell(x, y));
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_area_document](../../src_tilemap_giant_toad_area_document/index.md)
3.  [GiantToadAreaDocument](../../src_tilemap_giant_toad_area_document/GiantToadAreaDocument-class.md)
4.  areasAtCell method

##### GiantToadAreaDocument class

<div>

</div>

</div>

<div>

</div>
