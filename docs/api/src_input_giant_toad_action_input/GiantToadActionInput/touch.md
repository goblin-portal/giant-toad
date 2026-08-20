<div>

<div>

# <span class="kind-method">touch</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">touch</span>(

1.  <span id="touch-param-region" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">region</span>, {</span>
2.  <span id="touch-param-pressed" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pressed</span>, </span>

})

</div>

<div>

Feeds a named virtual touch region such as `moveLeft` or `jump`.

</div>

<div>

## Implementation

``` dart
void touch(String region, {required bool pressed}) {
  if (region.isEmpty) {
    throw ArgumentError.value(region, 'region', 'must not be empty');
  }
  _digital(GiantToadControl.touch(region), pressed);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_action_input](../../src_input_giant_toad_action_input/index.md)
3.  [GiantToadActionInput](../../src_input_giant_toad_action_input/GiantToadActionInput-class.md)
4.  touch method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
