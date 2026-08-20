<div>

<div>

# <span class="kind-constructor">GiantToadMapDocument</span> constructor

</div>

<div>

<span class="name">GiantToadMapDocument</span>({

1.  <span id="param-tileSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileSize</span>, </span>
2.  <span id="param-chunkSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span> = <span class="default-value">16</span>, </span>
3.  <span id="param-layers" class="parameter">required <span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../../src_tilemap_giant_toad_map_document/GiantToadMapLayer-class.md)</span>\></span></span> <span class="parameter-name">layers</span>, </span>
4.  <span id="param-objects" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span>\></span></span> <span class="parameter-name">objects</span> = <span class="default-value">const \[\]</span>, </span>
5.  <span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadMapDocument({
  required this.tileSize,
  this.chunkSize = 16,
  required List<GiantToadMapLayer> layers,
  List<Map<String, Object?>> objects = const [],
  Map<String, Object?> additionalFields = const {},
}) : layers = List.unmodifiable(layers),
     objects = List.unmodifiable(objects.map(_freezeJsonMap)),
     additionalFields = _freezeJsonMap(additionalFields) {
  if (tileSize <= 0) {
    throw ArgumentError.value(tileSize, 'tileSize', 'must be positive');
  }
  if (chunkSize <= 0) {
    throw ArgumentError.value(chunkSize, 'chunkSize', 'must be positive');
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_map_document](../../src_tilemap_giant_toad_map_document/index.md)
3.  [GiantToadMapDocument](../../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)
4.  GiantToadMapDocument.new constructor

##### GiantToadMapDocument class

<div>

</div>

</div>

<div>

</div>
