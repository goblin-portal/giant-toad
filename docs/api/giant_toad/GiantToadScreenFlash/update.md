<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
void update(double dt) {
  _validateDeltaTime(dt);
  _remaining = (_remaining - dt).clamp(0, double.infinity);
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
4.  update method

##### GiantToadScreenFlash class

<div>

</div>

</div>

<div>

</div>
