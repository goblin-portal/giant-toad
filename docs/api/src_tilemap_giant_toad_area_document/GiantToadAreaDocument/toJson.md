<div>

<div>

# <span class="kind-method">toJson</span> method

</div>

<div>

<span class="returntype">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="name">toJson</span>()

</div>

<div>

## Implementation

``` dart
Map<String, Object?> toJson() => {
  ...additionalFields,
  'areas': areas.map((area) => area.toJson()).toList(growable: false),
};
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_area_document](../../src_tilemap_giant_toad_area_document/index.md)
3.  [GiantToadAreaDocument](../../src_tilemap_giant_toad_area_document/GiantToadAreaDocument-class.md)
4.  toJson method

##### GiantToadAreaDocument class

<div>

</div>

</div>

<div>

</div>
