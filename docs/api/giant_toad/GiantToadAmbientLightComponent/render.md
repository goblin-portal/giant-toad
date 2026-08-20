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
  if (ambientColor.a == 0 || size.isZero()) return;
  final bounds = Offset.zero & Size(size.x, size.y);
  canvas.saveLayer(bounds, Paint());
  canvas.drawRect(bounds, Paint()..color = ambientColor);
  for (final light in lights) {
    if (!light.enabled || light.radius <= 0) continue;
    final position = _snap(light.position);
    final radius = (light.radius / pixelSize).round() * pixelSize.toDouble();
    switch (light.shape) {
      case GiantToadLightShape.circle:
        canvas.drawCircle(position, radius, _clear);
      case GiantToadLightShape.cone:
        canvas.drawPath(
          Path()
            ..moveTo(position.dx, position.dy)
            ..arcTo(
              Rect.fromCircle(center: position, radius: radius),
              light.direction - light.coneAngle / 2,
              light.coneAngle,
              false,
            )
            ..close(),
          _clear,
        );
    }
    if (light.color.a > 0) {
      canvas.drawCircle(position, radius, Paint()..color = light.color);
    }
  }
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
3.  [GiantToadAmbientLightComponent](../../giant_toad/GiantToadAmbientLightComponent-class.md)
4.  render method

##### GiantToadAmbientLightComponent class

<div>

</div>

</div>

<div>

</div>
