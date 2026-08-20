<div>

<div>

# <span class="kind-method">tint</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">tint</span>(

1.  <span id="tint-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span>, {</span>
2.  <span id="tint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Applies a color filter to the paint which will make things rendered with the paint looking like it was tinted with the given color.

</div>

<div>

## Implementation

``` dart
void tint(Color color, {T? paintId}) {
  getPaint(paintId).colorFilter = ColorFilter.mode(color, BlendMode.srcATop);
  onChanged();
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
4.  tint method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
