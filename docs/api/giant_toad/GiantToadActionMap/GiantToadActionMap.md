<div>

<div>

# <span class="kind-constructor">GiantToadActionMap</span> constructor

</div>

<div>

<span class="name">GiantToadActionMap</span>(

1.  <span id="param-bindings" class="parameter"><span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAction](../../giant_toad/GiantToadAction-class.md)</span>, <span class="type-parameter">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>\></span></span>\></span></span> <span class="parameter-name">bindings</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadActionMap(Map<GiantToadAction, Iterable<String>> bindings)
  : _bindings = {
      for (final entry in bindings.entries)
        entry.key: Set.unmodifiable(entry.value),
    };
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionMap](../../giant_toad/GiantToadActionMap-class.md)
4.  GiantToadActionMap.new constructor

##### GiantToadActionMap class

<div>

</div>

</div>

<div>

</div>
