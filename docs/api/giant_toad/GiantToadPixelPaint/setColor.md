<div>

<div>

# <span class="kind-method">setColor</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setColor</span>(

1.  <span id="setColor-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span>, {</span>
2.  <span id="setColor-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Shortcut for changing the color of the paint.

</div>

<div>

## Implementation

``` dart
void setColor(Color color, {T? paintId}) {
  getPaint(paintId).color = color;
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
4.  setColor method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
