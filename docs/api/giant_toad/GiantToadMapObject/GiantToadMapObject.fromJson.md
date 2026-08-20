<div>

<div>

# <span class="kind-constructor">GiantToadMapObject.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadMapObject.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadMapObject.fromJson(Map<String, Object?> json) {
  final reader = GiantToadJsonReader(json, context: 'Map object');
  final type = json['type'] ?? json['kind'];
  if (type is! String || type.isEmpty) {
    throw const FormatException(
      'Map object type must be a non-empty string.',
    );
  }
  final properties = Map<String, Object?>.from(json)
    ..remove('id')
    ..remove('type')
    ..remove('kind')
    ..remove('x')
    ..remove('y')
    ..remove('width')
    ..remove('height');
  return GiantToadMapObject(
    id: reader.string('id'),
    type: type,
    x: reader.finiteNumber('x'),
    y: reader.finiteNumber('y'),
    width: reader.finiteNumber('width', fallback: 0, nonNegative: true),
    height: reader.finiteNumber('height', fallback: 0, nonNegative: true),
    properties: Map.unmodifiable(properties),
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
3.  [GiantToadMapObject](../../giant_toad/GiantToadMapObject-class.md)
4.  GiantToadMapObject.fromJson factory constructor

##### GiantToadMapObject class

<div>

</div>

</div>

<div>

</div>
