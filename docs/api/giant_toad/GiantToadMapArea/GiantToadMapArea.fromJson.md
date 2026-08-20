<div>

<div>

# <span class="kind-constructor">GiantToadMapArea.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadMapArea.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadMapArea.fromJson(Map<String, Object?> json) {
  String requiredString(String key) {
    final value = json[key];
    if (value is! String || value.isEmpty) {
      throw FormatException('An area requires a non-empty string $key.');
    }
    return value;
  }

  int requiredInt(String key, {bool positive = false}) {
    final value = json[key];
    if (value is! int || (positive && value <= 0)) {
      throw FormatException(
        'An area requires a ${positive ? 'positive ' : ''}integer $key.',
      );
    }
    return value;
  }

  final rawValues = json['values'] ?? const <String, Object?>{};
  if (rawValues is! Map) {
    throw FormatException('Area values must be a JSON object.');
  }
  final additionalFields = Map<String, Object?>.from(json)
    ..remove('id')
    ..remove('name')
    ..remove('type')
    ..remove('areaSchema')
    ..remove('x')
    ..remove('y')
    ..remove('width')
    ..remove('height')
    ..remove('values');
  final areaSchema = json['areaSchema'];
  if (areaSchema != null && areaSchema is! String) {
    throw FormatException('Area areaSchema must be a string when present.');
  }
  return GiantToadMapArea(
    id: requiredString('id'),
    name: requiredString('name'),
    type: requiredString('type'),
    areaSchema: areaSchema as String?,
    x: requiredInt('x'),
    y: requiredInt('y'),
    width: requiredInt('width', positive: true),
    height: requiredInt('height', positive: true),
    values: Map<String, Object?>.from(rawValues),
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
3.  [GiantToadMapArea](../../giant_toad/GiantToadMapArea-class.md)
4.  GiantToadMapArea.fromJson factory constructor

##### GiantToadMapArea class

<div>

</div>

</div>

<div>

</div>
