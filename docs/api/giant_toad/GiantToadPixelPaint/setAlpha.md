<div>

<div>

# <span class="kind-method">setAlpha</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setAlpha</span>(

1.  <span id="setAlpha-param-alpha" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">alpha</span>, {</span>
2.  <span id="setAlpha-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Changes the opacity of the paint.

</div>

<div>

## Implementation

``` dart
void setAlpha(int alpha, {T? paintId}) {
  if (alpha < 0 || alpha > 255) {
    throw ArgumentError('Alpha needs to be between 0 and 255');
  }

  setColor(getPaint(paintId).color.withAlpha(alpha), paintId: paintId);
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
4.  setAlpha method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
