<div>

<div>

# <span class="kind-method">scale</span> method

</div>

<div>

<span class="returntype">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="name">scale</span>(

1.  <span id="scale-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
double scale(double dt) {
  _validateDeltaTime(dt);
  if (_remaining <= 0) return dt;
  _remaining = (_remaining - dt).clamp(0, double.infinity);
  return 0;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game_feel](../../src_gameplay_giant_toad_game_feel/index.md)
3.  [GiantToadHitPause](../../src_gameplay_giant_toad_game_feel/GiantToadHitPause-class.md)
4.  scale method

##### GiantToadHitPause class

<div>

</div>

</div>

<div>

</div>
