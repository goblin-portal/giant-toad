<div>

<div>

# <span class="kind-method">apply</span> method

</div>

<div>

<span class="returntype">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="name">apply</span>(

1.  <span id="apply-param-document" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">document</span></span>

)

</div>

<div>

Applies this edit without mutating `document`.

Only touched layers, chunks, and cell lists are copied. Empty chunks are removed, retaining the sparse on-disk representation.

</div>

<div>

## Implementation

``` dart
GiantToadMapDocument apply(GiantToadMapDocument document) {
  final layerIndexes = <String, int>{
    for (var index = 0; index < document.layers.length; index++)
      document.layers[index].id: index,
  };
  final copiedLayers = <int, _MutableLayer>{};

  for (final change in changes) {
    final layerIndex = layerIndexes[change.layerId];
    if (layerIndex == null) {
      throw ArgumentError.value(
        change.layerId,
        'changes',
        'references an unknown layer',
      );
    }
    final layer = copiedLayers.putIfAbsent(
      layerIndex,
      () => _MutableLayer.fromLayer(document.layers[layerIndex]),
    );
    layer.setCell(
      x: change.x,
      y: change.y,
      value: change.after,
      chunkSize: document.chunkSize,
    );
  }

  final layers = List<GiantToadMapLayer>.of(document.layers);
  for (final entry in copiedLayers.entries) {
    layers[entry.key] = entry.value.toLayer();
  }
  return GiantToadMapDocument(
    tileSize: document.tileSize,
    chunkSize: document.chunkSize,
    layers: layers,
    objects: document.objects,
    additionalFields: document.additionalFields,
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
3.  [GiantToadMapEdit](../../giant_toad/GiantToadMapEdit-class.md)
4.  apply method

##### GiantToadMapEdit class

<div>

</div>

</div>

<div>

</div>
