<div>

<div>

# <span class="kind-method">render</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">render</span>(

1.  <span id="render-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
void render(Canvas canvas) {
  if (!snapPosition) return super.render(canvas);
  final dx = position.x.roundToDouble() - position.x;
  final dy = position.y.roundToDouble() - position.y;
  canvas.save();
  canvas.translate(dx, dy);
  super.render(canvas);
  canvas.restore();
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelSpriteComponent](../../giant_toad/GiantToadPixelSpriteComponent-class.md)
4.  render method

##### GiantToadPixelSpriteComponent class

<div>

</div>

</div>

<div>

</div>
