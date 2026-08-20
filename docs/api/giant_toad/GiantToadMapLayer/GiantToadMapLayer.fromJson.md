<div>

<div>

# <span class="kind-constructor">GiantToadMapLayer.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadMapLayer.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span>, {</span>
2.  <span id="fromJson-param-chunkSize" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span>, </span>

})

</div>

<div>

## Implementation

``` dart
factory GiantToadMapLayer.fromJson(
  Map<String, Object?> json, {
  required int chunkSize,
}) {
  final reader = GiantToadJsonReader(json, context: 'Map layer');
  final id = reader.string('id');
  final additionalFields = Map<String, Object?>.from(json)
    ..remove('id')
    ..remove('name')
    ..remove('chunks');
  return GiantToadMapLayer(
    id: id,
    name: reader.string('name'),
    chunks: _decodeLayerChunks(
      json['chunks'],
      layerId: id,
      chunkSize: chunkSize,
    ),
    additionalFields: additionalFields,
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapLayer](../../giant_toad/GiantToadMapLayer-class.md)
4.  GiantToadMapLayer.fromJson factory constructor

##### GiantToadMapLayer class

<div>

</div>

</div>

<div>

</div>
