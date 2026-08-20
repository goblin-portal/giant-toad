<div>

<div>

# <span class="kind-method">setOpacity</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">setOpacity</span>(

1.  <span id="setOpacity-param-opacity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">opacity</span>, {</span>
2.  <span id="setOpacity-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span>, </span>

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
void setOpacity(double opacity, {T? paintId}) {
  if (opacity < 0 || opacity > 1) {
    throw ArgumentError('Opacity needs to be between 0 and 1');
  }

  setColor(
    getPaint(paintId).color.withValues(alpha: opacity),
    paintId: paintId,
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
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  setOpacity method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
