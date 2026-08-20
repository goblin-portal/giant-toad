<div>

<div>

# <span class="kind-method">play</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">play</span>(

1.  <span id="play-param-state" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">state</span>, {</span>
2.  <span id="play-param-restart" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">restart</span> = <span class="default-value">false</span>, </span>
3.  <span id="play-param-faceLeft" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)?</span> <span class="parameter-name">faceLeft</span>, </span>
4.  <span id="play-param-force" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">force</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void play(
  T state, {
  bool restart = false,
  bool? faceLeft,
  bool force = false,
}) {
  if (playingOneShot && !_oneShotInterruptible && !force) return;
  if (current != state) {
    current = state;
    _wire(state);
  } else if (restart) {
    animationTicker?.reset();
  }
  _returnState = null;
  if (faceLeft != null) facingLeft = faceLeft;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_animation_states](../../src_render_giant_toad_animation_states/index.md)
3.  [GiantToadAnimationStates<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_render_giant_toad_animation_states/GiantToadAnimationStates-class.md)
4.  play method

##### GiantToadAnimationStates class

<div>

</div>

</div>

<div>

</div>
