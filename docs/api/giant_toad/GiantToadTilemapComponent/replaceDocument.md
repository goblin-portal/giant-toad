<div>

<div>

# <span class="kind-method">replaceDocument</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">replaceDocument</span>(

1.  <span id="replaceDocument-param-next" class="parameter"><span class="type-annotation">[GiantToadMapDocument](../../giant_toad/GiantToadMapDocument-class.md)</span> <span class="parameter-name">next</span>, {</span>
2.  <span id="replaceDocument-param-changedChunks" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadEditedChunk](../../giant_toad/GiantToadEditedChunk.md)</span>\></span>?</span> <span class="parameter-name">changedChunks</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void replaceDocument(
  GiantToadMapDocument next, {
  Iterable<GiantToadEditedChunk>? changedChunks,
}) {
  if (identical(document, next)) return;
  final gridChanged =
      document.tileSize != next.tileSize ||
      document.chunkSize != next.chunkSize;
  document = next;
  _revision++;
  if (changedChunks == null || gridChanged) {
    invalidateRenderCache();
    return;
  }
  for (final changed in changedChunks) {
    _chunkPictures.remove(changed)?.dispose();
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
3.  [GiantToadTilemapComponent](../../giant_toad/GiantToadTilemapComponent-class.md)
4.  replaceDocument method

##### GiantToadTilemapComponent class

<div>

</div>

</div>

<div>

</div>
