<div>

<div>

# <span class="kind-method">invalidateRenderCache</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">invalidateRenderCache</span>()

</div>

<div>

Disposes all cached pictures after an asset or animation-frame change.

</div>

<div>

## Implementation

``` dart
void invalidateRenderCache() {
  for (final picture in _chunkPictures.values) {
    picture.dispose();
  }
  _chunkPictures.clear();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tilemap_component](../../src_tilemap_giant_toad_tilemap_component/index.md)
3.  [GiantToadTilemapComponent](../../src_tilemap_giant_toad_tilemap_component/GiantToadTilemapComponent-class.md)
4.  invalidateRenderCache method

##### GiantToadTilemapComponent class

<div>

</div>

</div>

<div>

</div>
