<div>

<div>

# <span class="kind-method">findRootGame</span> method

</div>

<div>

<span class="returntype">[FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> <span class="name">findRootGame</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Fetches the root [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

</div>

<div>

## Implementation

``` dart
FlameGame? findRootGame() {
  var game = findGame();
  while (game?.parent != null) {
    game = game!.parent!.findGame();
  }
  return game;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  findRootGame method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
