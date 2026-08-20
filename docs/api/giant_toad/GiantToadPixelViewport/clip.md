<div>

<div>

# <span class="kind-method">clip</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">clip</span>(

1.  <span id="clip-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Apply clip mask to the `canvas`.

The mask must be in the viewport's local coordinate system, where the top left corner of the viewport has coordinates (0, 0). The overall size of the clip mask's shape must match the [size](https://pub.dev/documentation/flame/1.38.0/camera/Viewport/size.md) of the viewport.

This API must be implemented by all viewports.

</div>

<div>

## Implementation

``` dart
@override
void clip(Canvas canvas) => canvas.clipRect(_clipRect, doAntiAlias: false);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelViewport](../../giant_toad/GiantToadPixelViewport-class.md)
4.  clip method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
