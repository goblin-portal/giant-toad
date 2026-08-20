<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void update(double dt) {
  age += dt;
  position.addScaled(velocity, dt);
  if (!alive) removeFromParent();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game_feel](../../src_gameplay_giant_toad_game_feel/index.md)
3.  [GiantToadFloatingText](../../src_gameplay_giant_toad_game_feel/GiantToadFloatingText-class.md)
4.  update method

##### GiantToadFloatingText class

<div>

</div>

</div>

<div>

</div>
