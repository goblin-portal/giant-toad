<div>

<div>

# <span class="kind-method">trigger</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">trigger</span>(

1.  <span id="trigger-param-duration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">duration</span></span>

)

</div>

<div>

## Implementation

``` dart
void trigger(double duration) {
  if (duration < 0 || !duration.isFinite) {
    throw ArgumentError.value(duration, 'duration');
  }
  _remaining = duration > _remaining ? duration : _remaining;
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
4.  trigger method

##### GiantToadHitPause class

<div>

</div>

</div>

<div>

</div>
