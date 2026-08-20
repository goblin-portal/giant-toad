<div>

<div>

# <span class="kind-method">joystick</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">joystick</span>(

1.  <span id="joystick-param-delta" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">delta</span></span>

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
2.  [giant_toad_action_input](../../src_input_giant_toad_action_input/index.md)
3.  [GiantToadActionInput](../../src_input_giant_toad_action_input/GiantToadActionInput-class.md)
4.  joystick method

##### GiantToadActionInput class

<div>

</div>

</div>

<div>

</div>
