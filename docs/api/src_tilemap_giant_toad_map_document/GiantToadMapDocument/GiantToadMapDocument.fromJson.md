<div>

<div>

# <span class="kind-constructor">GiantToadMapDocument.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadMapDocument.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadMapDocument.fromJson(Map<String, Object?> json) {
  final tileSize = json['tileSize'];
  if (tileSize is! int || tileSize <= 0) {
    throw FormatException('A map requires a positive integer tileSize.');
  }
  final chunkSize = json['chunkSize'] ?? 16;
  if (chunkSize is! int || chunkSize <= 0) {
    throw FormatException('Map chunkSize must be a positive integer.');
  }
  final rawLayers = json['layers'];
  if (rawLayers is! List) {
    throw FormatException('A map requires a layers array.');
  }
  final layers = rawLayers
      .map((rawLayer) {
        if (rawLayer is! Map) {
          throw FormatException('Map layers must be JSON objects.');
        }
        return GiantToadMapLayer.fromJson(
          Map<String, Object?>.from(rawLayer),
          chunkSize: chunkSize,
        );
      })
      .toList(growable: false);
  final rawObjects = json['objects'] ?? const [];
  if (rawObjects is! List || rawObjects.any((object) => object is! Map)) {
    throw FormatException('Map objects must be a JSON object array.');
  }

  final additionalFields = Map<String, Object?>.from(json)
    ..remove('tileSize')
    ..remove('chunkSize')
    ..remove('layers')
    ..remove('objects');
  return GiantToadMapDocument(
    tileSize: tileSize,
    chunkSize: chunkSize,
    layers: layers,
    objects: rawObjects
        .map((object) => Map<String, Object?>.from(object as Map))
        .toList(growable: false),
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
2.  [giant_toad_map_document](../../src_tilemap_giant_toad_map_document/index.md)
3.  [GiantToadMapDocument](../../src_tilemap_giant_toad_map_document/GiantToadMapDocument-class.md)
4.  GiantToadMapDocument.fromJson factory constructor

##### GiantToadMapDocument class

<div>

</div>

</div>

<div>

</div>
