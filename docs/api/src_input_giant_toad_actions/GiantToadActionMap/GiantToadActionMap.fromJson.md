<div>

<div>

# <span class="kind-constructor">GiantToadActionMap.fromJson</span> constructor

</div>

<div>

<span class="name">GiantToadActionMap.fromJson</span>(

1.  <span id="fromJson-param-json" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="parameter-name">json</span></span>

)

</div>

<div>

Decodes persisted bindings keyed by action identifier.

</div>

<div>

## Implementation

``` dart
factory GiantToadActionMap.fromJson(Map<String, Object?> json) {
  final bindings = <GiantToadAction, Iterable<String>>{};
  for (final entry in json.entries) {
    if (entry.value is! List ||
        (entry.value as List).any((control) => control is! String)) {
      throw FormatException(
        'Action "${entry.key}" must map to a string array.',
      );
    }
    bindings[GiantToadAction(entry.key)] = List<String>.from(
      entry.value as List,
    );
  }
  return GiantToadActionMap(bindings);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_actions](../../src_input_giant_toad_actions/index.md)
3.  [GiantToadActionMap](../../src_input_giant_toad_actions/GiantToadActionMap-class.md)
4.  GiantToadActionMap.fromJson factory constructor

##### GiantToadActionMap class

<div>

</div>

</div>

<div>

</div>
