<div>

<div>

# <span class="kind-method">trigger</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">trigger</span>(

1.  <span id="trigger-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span>, </span>
2.  <span id="trigger-param-duration" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">duration</span></span>

)

</div>

<div>

## Implementation

``` dart
void trigger(Color color, double duration) {
  if (duration <= 0 || !duration.isFinite) {
    throw ArgumentError.value(duration, 'duration', 'must be positive');
  }
  this.color = color;
  _duration = duration;
  _remaining = duration;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadScreenFlash](../../giant_toad/GiantToadScreenFlash-class.md)
4.  trigger method

##### GiantToadScreenFlash class

<div>

</div>

</div>

<div>

</div>
