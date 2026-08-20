<div>

<div>

# <span class="kind-property">debugTextPaint</span> property

</div>

<div>

<div>

<span class="returntype">[TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md)</span> get <span class="name">debugTextPaint</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Returns a [TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md) object with the [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) set as color for the text.

</div>

<div>

## Implementation

``` dart
TextPaint get debugTextPaint {
  final viewfinder = CameraComponent.currentCamera?.viewfinder;
  final viewport = CameraComponent.currentCamera?.viewport;
  final zoom = viewfinder?.zoom ?? 1.0;

  final viewportScale = math.max(
    viewport?.transform.scale.x ?? 1,
    viewport?.transform.scale.y ?? 1,
  );

  if (!_debugTextPaintCache.isCacheValid([debugColor])) {
    final textPaint = TextPaint(
      style: TextStyle(
        color: debugColor,
        fontSize: 12 / zoom / viewportScale,
      ),
    );
    _debugTextPaintCache.updateCache(textPaint, [debugColor]);
  }
  return _debugTextPaintCache.value!;
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
4.  debugTextPaint property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
