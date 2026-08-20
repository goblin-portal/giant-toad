<div>

<div>

# <span class="kind-method">toJson</span> method

</div>

<div>

<span class="returntype">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="name">toJson</span>()

</div>

<div>

Produces stable JSON-compatible bindings keyed by action identifier.

</div>

<div>

## Implementation

``` dart
Map<String, Object?> toJson() => {
  for (final entry in _bindings.entries)
    entry.key.id: entry.value.toList()..sort(),
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
4.  toJson method

##### GiantToadActionMap class

<div>

</div>

</div>

<div>

</div>
