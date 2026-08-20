<div>

<div>

# <span class="kind-constructor">GiantToadMapLayer</span> constructor

</div>

<div>

<span class="name">GiantToadMapLayer</span>({

1.  <span id="param-id" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">id</span>, </span>
2.  <span id="param-name" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span>
3.  <span id="param-chunks" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadChunkKey](../../giant_toad/GiantToadChunkKey-class.md)</span>, <span class="type-parameter">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapCell](../../giant_toad/GiantToadMapCell.md)?</span>\></span></span>\></span></span> <span class="parameter-name">chunks</span>, </span>
4.  <span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadMapLayer({
  required this.id,
  required this.name,
  required Map<GiantToadChunkKey, List<GiantToadMapCell>> chunks,
  Map<String, Object?> additionalFields = const {},
}) : chunks = Map.unmodifiable({
       for (final entry in chunks.entries)
         entry.key: List<GiantToadMapCell>.unmodifiable(
           entry.value.map(_freezeJsonValue),
         ),
     }),
     additionalFields = _freezeJsonMap(additionalFields);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapLayer](../../giant_toad/GiantToadMapLayer-class.md)
4.  GiantToadMapLayer.new constructor

##### GiantToadMapLayer class

<div>

</div>

</div>

<div>

</div>
