<div>

<div>

# <span class="kind-constructor">GiantToadTileCollision</span> constructor

</div>

<div>

<span class="name">GiantToadTileCollision</span>({

1.  <span id="param-document" class="parameter">required <span class="type-annotation">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span>, </span>
2.  <span id="param-solidLayer" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">solidLayer</span> = <span class="default-value">'solids'</span>, </span>
3.  <span id="param-isSolid" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isSolid</span>(</span>
    1.  <span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>

    )?,
4.  <span id="param-materialFor" class="parameter"><span class="type-annotation">[GiantToadTileMaterial](../../giant_toad/GiantToadTileMaterial.md)</span> <span class="parameter-name">materialFor</span>(</span>
    1.  <span id="param-cell" class="parameter"><span class="type-annotation">[GiantToadMapCell](../../giant_toad/GiantToadMapCell.md)?</span> <span class="parameter-name">cell</span></span>

    )?,
5.  <span id="param-additionalLayers" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapLayer](../../giant_toad/GiantToadMapLayer-class.md)</span>\></span></span> <span class="parameter-name">additionalLayers</span> = <span class="default-value">const \[\]</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadTileCollision({
  required this.document,
  String solidLayer = 'solids',
  bool Function(GiantToadMapCell cell)? isSolid,
  GiantToadTileMaterial Function(GiantToadMapCell cell)? materialFor,
  Iterable<GiantToadMapLayer> additionalLayers = const [],
}) : layer = document.layers.firstWhere(
       (candidate) =>
           candidate.id.toLowerCase() == solidLayer.toLowerCase() ||
           candidate.name.toLowerCase() == solidLayer.toLowerCase(),
       orElse: () => throw StateError('Map has no "$solidLayer" layer.'),
     ),
     additionalLayers = List.unmodifiable(additionalLayers),
     materialFor =
         materialFor ??
         (isSolid == null
             ? _defaultMaterial
             : (cell) => isSolid(cell)
                   ? GiantToadTileMaterial.solid
                   : GiantToadTileMaterial.empty);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTileCollision](../../giant_toad/GiantToadTileCollision-class.md)
4.  GiantToadTileCollision.new constructor

##### GiantToadTileCollision class

<div>

</div>

</div>

<div>

</div>
