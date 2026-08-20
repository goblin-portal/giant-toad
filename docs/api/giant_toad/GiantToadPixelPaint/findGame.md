<div>

<div>

# <span class="kind-method">findGame</span> method

</div>

<div>

<span class="returntype">[FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> <span class="name">findGame</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Fetches the nearest [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

</div>

<div>

## Implementation

``` dart
FlameGame? findGame() {
  assert(
    staticGameInstance is FlameGame || staticGameInstance == null,
    'A component needs to have a FlameGame as the root.',
  );
  final gameInstance = staticGameInstance is FlameGame
      ? staticGameInstance! as FlameGame
      : null;
  return gameInstance ??
      ((this is FlameGame) ? (this as FlameGame) : _parent?.findGame());
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
4.  findGame method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
