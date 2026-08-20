<div>

<div>

# <span class="kind-constructor">GiantToadMapArea</span> constructor

</div>

<div>

<span class="name">GiantToadMapArea</span>({

1.  <span id="param-id" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">id</span>, </span>
2.  <span id="param-name" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, </span>
3.  <span id="param-type" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">type</span>, </span>
4.  <span id="param-x" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">x</span>, </span>
5.  <span id="param-y" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">y</span>, </span>
6.  <span id="param-width" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">width</span>, </span>
7.  <span id="param-height" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">height</span>, </span>
8.  <span id="param-areaSchema" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">areaSchema</span>, </span>
9.  <span id="param-values" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">values</span> = <span class="default-value">const {}</span>, </span>
10. <span id="param-additionalFields" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">additionalFields</span> = <span class="default-value">const {}</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadMapArea({
  required this.id,
  required this.name,
  required this.type,
  required this.x,
  required this.y,
  required this.width,
  required this.height,
  this.areaSchema,
  Map<String, Object?> values = const {},
  Map<String, Object?> additionalFields = const {},
}) : values = Map.unmodifiable(values),
     additionalFields = Map.unmodifiable(additionalFields) {
  if (id.isEmpty || name.isEmpty || type.isEmpty) {
    throw ArgumentError('Area id, name, and type must not be empty.');
  }
  if (width <= 0 || height <= 0) {
    throw ArgumentError('Area width and height must be positive.');
  }
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
4.  GiantToadMapArea.new constructor

##### GiantToadMapArea class

<div>

</div>

</div>

<div>

</div>
