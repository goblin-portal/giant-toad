<div>

<div>

# <span class="kind-constructor">GiantToadPixelAtlas</span> constructor

</div>

<div>

<span class="name">GiantToadPixelAtlas</span>({

1.  <span id="param-image" class="parameter">required <span class="type-annotation">[Image](https://api.flutter.dev/flutter/dart-ui/Image-class.md)</span> <span class="parameter-name">image</span>, </span>
2.  <span id="param-tileWidth" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileWidth</span>, </span>
3.  <span id="param-tileHeight" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">tileHeight</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelAtlas({
  required Image image,
  required int tileWidth,
  required int tileHeight,
}) : tileWidth = tileWidth,
     tileHeight = tileHeight,
     sheet = SpriteSheet(
       image: image,
       srcSize: Vector2(tileWidth.toDouble(), tileHeight.toDouble()),
     ) {
  if (tileWidth <= 0 || tileHeight <= 0) {
    throw ArgumentError('Pixel atlas tile dimensions must be positive.');
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
3.  [GiantToadPixelAtlas](../../giant_toad/GiantToadPixelAtlas-class.md)
4.  GiantToadPixelAtlas.new constructor

##### GiantToadPixelAtlas class

<div>

</div>

</div>

<div>

</div>
