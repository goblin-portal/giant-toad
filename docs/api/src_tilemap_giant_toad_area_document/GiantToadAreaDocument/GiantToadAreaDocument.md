<div>

<div>

# <span class="kind-constructor">GiantToadAreaDocument</span> constructor

</div>

<div>

<span class="name">GiantToadAreaDocument</span>({

1.  <span id="param-areas" class="parameter">required <span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapArea](../../src_tilemap_giant_toad_area_document/GiantToadMapArea-class.md)</span>\></span></span> <span class="parameter-name">areas</span>, </span>
2.  <span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadAreaDocument({
  required List<GiantToadMapArea> areas,
  Map<String, Object?> additionalFields = const {},
}) : areas = List.unmodifiable(areas),
     additionalFields = Map.unmodifiable(additionalFields);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_area_document](../../src_tilemap_giant_toad_area_document/index.md)
3.  [GiantToadAreaDocument](../../src_tilemap_giant_toad_area_document/GiantToadAreaDocument-class.md)
4.  GiantToadAreaDocument.new constructor

##### GiantToadAreaDocument class

<div>

</div>

</div>

<div>

</div>
