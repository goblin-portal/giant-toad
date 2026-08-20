<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span>, {</span>
2.  <span id="update-param-grounded" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">grounded</span>, </span>
3.  <span id="update-param-jumpPressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">jumpPressed</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void update(double dt, {required bool grounded, required bool jumpPressed}) {
  _validateDeltaTime(dt);
  _buffer = jumpPressed
      ? bufferDuration
      : (_buffer - dt).clamp(0, bufferDuration);
  _coyote = grounded
      ? coyoteDuration
      : (_coyote - dt).clamp(0, coyoteDuration);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_game_feel](../../src_gameplay_giant_toad_game_feel/index.md)
3.  [GiantToadJumpAssist](../../src_gameplay_giant_toad_game_feel/GiantToadJumpAssist-class.md)
4.  update method

##### GiantToadJumpAssist class

<div>

</div>

</div>

<div>

</div>
