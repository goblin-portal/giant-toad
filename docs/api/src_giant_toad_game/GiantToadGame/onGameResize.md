<div>

<div>

# <span class="kind-method">onGameResize</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onGameResize</span>(

1.  <span id="onGameResize-param-size" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">size</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void onGameResize(Vector2 size) {
  super.onGameResize(size);
  if (_initialCameraFramed) return;
  final visibleSize = camera.viewport.virtualSize;
  camera.viewfinder.position = Vector2(visibleSize.x / 2, visibleSize.y / 2);
  _initialCameraFramed = true;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game](../../src_giant_toad_game/index.md)
3.  [GiantToadGame<span class="signature">\<<span class="type-parameter">W extends dynamic</span>\></span>](../../src_giant_toad_game/GiantToadGame-class.md)
4.  onGameResize method

##### GiantToadGame class

<div>

</div>

</div>

<div>

</div>
