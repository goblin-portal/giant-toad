<div>

<div>

# <span class="kind-method">joystick</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">joystick</span>(

1.  <span id="joystick-param-delta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">delta</span></span>

)

</div>

<div>

## Implementation

``` dart
void joystick(Vector2 delta) {
  _axis(
    GiantToadControl.joystick('x', positive: true),
    GiantToadControl.joystick('x', positive: false),
    delta.x,
  );
  _axis(
    GiantToadControl.joystick('y', positive: true),
    GiantToadControl.joystick('y', positive: false),
    delta.y,
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionInput](../../giant_toad/GiantToadActionInput-class.md)
4.  joystick method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
