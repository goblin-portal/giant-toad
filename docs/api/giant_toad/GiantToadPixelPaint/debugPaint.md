<div>

<div>

# <span class="kind-property">debugPaint</span> property

</div>

<div>

<div>

<span class="returntype">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span> get <span class="name">debugPaint</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

The [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) represented as a [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md) object.

</div>

<div>

## Implementation

``` dart
Paint get debugPaint {
  if (!_debugPaintCache.isCacheValid([debugColor])) {
    final paint = Paint()
      ..color = debugColor
      ..strokeWidth =
          0 // hairline-width
      ..style = PaintingStyle.stroke;
    _debugPaintCache.updateCache(paint, [debugColor]);
  }
  return _debugPaintCache.value!;
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  debugPaint property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
