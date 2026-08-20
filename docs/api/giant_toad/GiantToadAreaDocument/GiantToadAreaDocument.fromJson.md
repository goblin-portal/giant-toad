<div>

<div>

# <span class="kind-constructor">GiantToadAreaDocument.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadAreaDocument.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

## Implementation

``` dart
factory GiantToadAreaDocument.fromJson(Map<String, Object?> json) {
  final rawAreas = json['areas'];
  if (rawAreas is! List) {
    throw FormatException('An areas document requires an areas array.');
  }
  return GiantToadAreaDocument(
    areas: rawAreas
        .map((area) {
          if (area is! Map) {
            throw FormatException('Areas must be JSON objects.');
          }
          return GiantToadMapArea.fromJson(Map<String, Object?>.from(area));
        })
        .toList(growable: false),
    additionalFields: Map<String, Object?>.from(json)..remove('areas'),
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
3.  [GiantToadAreaDocument](../../giant_toad/GiantToadAreaDocument-class.md)
4.  GiantToadAreaDocument.fromJson factory constructor

##### GiantToadAreaDocument class

<div>

</div>

</div>

<div>

</div>
