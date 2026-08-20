<div>

<div>

# <span class="kind-constructor">GiantToadSaveData.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadSaveData.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadSaveData.fromJson(Map<String, Object?> json) {
  final version = json['schemaVersion'];
  final values = json['values'];
  if (version is! int || version < 1 || values is! Map) {
    throw const FormatException('Invalid Giant Toad save data.');
  }
  return GiantToadSaveData(
    schemaVersion: version,
    values: Map<String, Object?>.from(values),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadSaveData](../../src_runtime_giant_toad_persistence/GiantToadSaveData-class.md)
4.  GiantToadSaveData.fromJson factory constructor

##### GiantToadSaveData class

<div>

</div>

</div>

<div>

</div>
