<div>

<div>

# <span class="kind-method">affectedChunks</span> method

</div>

<div>

<span class="returntype">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadEditedChunk](../../giant_toad/GiantToadEditedChunk.md)</span>\></span></span> <span class="name">affectedChunks</span>(

1.  <span id="affectedChunks-param-chunkSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">chunkSize</span></span>

)

</div>

<div>

Layer/chunk pairs whose rendered content changes when this edit applies.

</div>

<div>

## Implementation

``` dart
Set<GiantToadEditedChunk> affectedChunks(int chunkSize) => {
  for (final change in changes)
    (
      layerId: change.layerId,
      chunk: GiantToadChunkKey(
        _floorDivide(change.x, chunkSize),
        _floorDivide(change.y, chunkSize),
      ),
    ),
};
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapEdit](../../giant_toad/GiantToadMapEdit-class.md)
4.  affectedChunks method

##### GiantToadMapEdit class

<div>

</div>

</div>

<div>

</div>
