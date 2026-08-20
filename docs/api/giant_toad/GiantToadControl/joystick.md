<div>

<div>

# <span class="kind-method">joystick</span> static method

</div>

<div>

<span class="returntype">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="name">joystick</span>(

1.  <span id="joystick-param-axis" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">axis</span>, {</span>
2.  <span id="joystick-param-positive" class="parameter">required <span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">positive</span>, </span>

})

</div>

<div>

## Implementation

``` dart
static String joystick(String axis, {required bool positive}) =>
    'joystick:$axis${positive ? '+' : '-'}';
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadControl](../../giant_toad/GiantToadControl-class.md)
4.  joystick static method

##### GiantToadControl class

<div>

</div>

</div>

<div>

</div>
