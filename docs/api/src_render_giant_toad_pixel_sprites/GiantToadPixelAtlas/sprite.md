<div>

<div>

# <span class="kind-method">sprite</span> method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">sprite</span>(

1.  <span id="sprite-param-row" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">row</span>, </span>
2.  <span id="sprite-param-column" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">column</span></span>

)

</div>

<div>

## Implementation

``` dart
Sprite sprite(int row, int column) {
  if (row < 0 || column < 0) {
    throw RangeError('Sprite row and column must be non-negative.');
  }
  return sheet.getSprite(row, column);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_sprites](../../src_render_giant_toad_pixel_sprites/index.md)
3.  [GiantToadPixelAtlas](../../src_render_giant_toad_pixel_sprites/GiantToadPixelAtlas-class.md)
4.  sprite method

##### GiantToadPixelAtlas class

<div>

</div>

</div>

<div>

</div>
