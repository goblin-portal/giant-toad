<div>

<div>

# <span class="kind-method">toJson</span> method

</div>

<div>

<span class="returntype">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span></span> <span class="name">toJson</span>()

</div>

<div>

## Implementation

``` dart
Map<String, Object?> toJson() => {
  ...additionalFields,
  'tileSize': tileSize,
  'chunkSize': chunkSize,
  'layers': layers.map((layer) => layer.toJson()).toList(growable: false),
  'objects': objects,
};
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)
4.  toJson method

##### GiantToadMapDocument class

<div>

</div>

</div>

<div>

</div>
