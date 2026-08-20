<div>

<div>

# <span class="kind-method">playOnce</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">playOnce</span>(

1.  <span id="playOnce-param-state" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">state</span>, {</span>
2.  <span id="playOnce-param-then" class="parameter">required <span class="type-annotation">T</span> <span class="parameter-name">then</span>, </span>
3.  <span id="playOnce-param-faceLeft" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)?</span> <span class="parameter-name">faceLeft</span>, </span>
4.  <span id="playOnce-param-interruptible" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">interruptible</span> = <span class="default-value">false</span>, </span>

})

</div>

<div>

## Implementation

``` dart
void playOnce(
  T state, {
  required T then,
  bool? faceLeft,
  bool interruptible = false,
}) {
  current = state;
  animationTicker?.reset();
  _returnState = then;
  _oneShotInterruptible = interruptible;
  if (faceLeft != null) facingLeft = faceLeft;
  _wire(state);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadAnimationStates<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad/GiantToadAnimationStates-class.md)
4.  playOnce method

##### GiantToadAnimationStates class

<div>

</div>

</div>

<div>

</div>
