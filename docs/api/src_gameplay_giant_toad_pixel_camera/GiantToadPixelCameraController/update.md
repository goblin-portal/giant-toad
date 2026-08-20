<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

</div>

<div>

## Implementation

``` dart
@override
void update(double dt) {
  _time += dt;
  final followed = target;
  if (followed != null) {
    final center = followed.absoluteCenter;
    final velocity = _hasPrevious && dt > 0
        ? (center - _previousTarget) / dt
        : Vector2.zero();
    _previousTarget.setFrom(center);
    _hasPrevious = true;
    final desired = center + (velocity.normalized() * lookAhead);
    final current = camera.viewfinder.position;
    _basePosition.setFrom(current);
    final offset = desired - current;
    final halfWidth = deadzone.width / 2;
    final halfHeight = deadzone.height / 2;
    if (offset.x.abs() > halfWidth) {
      _basePosition.x += offset.x - offset.x.sign * halfWidth;
    }
    if (offset.y.abs() > halfHeight) {
      _basePosition.y += offset.y - offset.y.sign * halfHeight;
    }
    if (followSpeed > 0) {
      final blend = 1 - math.exp(-followSpeed * dt);
      _basePosition.setFrom(current + ((_basePosition - current) * blend));
    }
    _clampToBounds(_basePosition);
  } else {
    _basePosition.setFrom(camera.viewfinder.position);
  }

  final shakeStrength = maxShake * _trauma * _trauma;
  final shake = Vector2(
    math.sin(_time * 73.13) * shakeStrength,
    math.cos(_time * 91.71) * shakeStrength,
  );
  final output = _basePosition + shake;
  if (pixelSnap) {
    output.setValues(output.x.roundToDouble(), output.y.roundToDouble());
  }
  camera.viewfinder.position = output;
  _trauma = math.max(0, _trauma - dt);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_camera](../../src_gameplay_giant_toad_pixel_camera/index.md)
3.  [GiantToadPixelCameraController](../../src_gameplay_giant_toad_pixel_camera/GiantToadPixelCameraController-class.md)
4.  update method

##### GiantToadPixelCameraController class

<div>

</div>

</div>

<div>

</div>
