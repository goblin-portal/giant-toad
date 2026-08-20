<div>

<div>

# <span class="kind-constructor">GiantToadJumpAssist</span> constructor

</div>

<div>

<span class="name">GiantToadJumpAssist</span>({

1.  <span id="param-bufferDuration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">bufferDuration</span> = <span class="default-value">0.12</span>, </span>
2.  <span id="param-coyoteDuration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">coyoteDuration</span> = <span class="default-value">0.1</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadJumpAssist({this.bufferDuration = 0.12, this.coyoteDuration = 0.1}) {
  if (bufferDuration < 0 || coyoteDuration < 0) {
    throw ArgumentError('Jump assist durations must not be negative.');
  }
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
4.  GiantToadJumpAssist.new constructor

##### GiantToadJumpAssist class

<div>

</div>

</div>

<div>

</div>
