<div>

<div>

# <span class="kind-method">getAlpha</span> method

</div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="name">getAlpha</span>({

1.  <span id="getAlpha-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Returns the current opacity.

</div>

<div>

## Implementation

``` dart
int getAlpha({T? paintId}) {
  return getPaint(paintId).color.a ~/ 255;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  getAlpha method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
