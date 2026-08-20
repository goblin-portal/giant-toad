<div>

<div>

# <span class="kind-method">postProcess</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">postProcess</span>(

1.  <span id="postProcess-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span>, </span>
2.  <span id="postProcess-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

There the effects of the post process are applied. This is where you should implement the logic of the post process. Including eventual calls to [rasterizeSubtree](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcess/rasterizeSubtree.md) and [renderSubtree](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcess/renderSubtree.md).

If neither is called the post process will not render anything apart from what is implemented in this method.

</div>

<div>

## Implementation

``` dart
@override
void postProcess(Vector2 size, Canvas canvas) {
  renderSubtree(canvas);
  canvas.drawRect(
    Rect.fromLTWH(0, 0, size.x, size.y),
    Paint()..color = ambient,
  );
  for (final light in lights) {
    if (light.radius <= 0 || light.intensity <= 0) continue;
    final alpha = (light.color.a * light.intensity).clamp(0.0, 1.0);
    final color = light.color.withValues(alpha: alpha);
    canvas.drawCircle(
      Offset(light.position.x, light.position.y),
      light.radius,
      Paint()
        ..blendMode = BlendMode.plus
        ..shader = RadialGradient(colors: [color, color.withValues(alpha: 0)])
            .createShader(
              Rect.fromCircle(
                center: Offset(light.position.x, light.position.y),
                radius: light.radius,
              ),
            ),
    );
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadLightingPostProcess](../../giant_toad/GiantToadLightingPostProcess-class.md)
4.  postProcess method

##### GiantToadLightingPostProcess class

<div>

</div>

</div>

<div>

</div>
