<div>

<div>

# <span class="kind-method">snapshot</span> method

</div>

<div>

<span class="returntype">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="name">snapshot</span>()

</div>

<div>

## Implementation

``` dart
Map<String, Object?> snapshot() => {
  for (final entry in _values.entries) entry.key: entry.value(),
};
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDiagnostics](../../giant_toad/GiantToadDiagnostics-class.md)
4.  snapshot method

##### GiantToadDiagnostics class

<div>

</div>

</div>

<div>

</div>
