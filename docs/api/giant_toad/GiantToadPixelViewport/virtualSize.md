<div>

<div>

# <span class="kind-property">virtualSize</span> property

</div>

<div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> get <span class="name">virtualSize</span>

<div>

<span class="feature">override</span>

</div>

</div>

<div>

In most cases [virtualSize](../../giant_toad/GiantToadPixelViewport/virtualSize.md) is the same as [size](https://pub.dev/documentation/flame/1.38.0/camera/Viewport/size.md), but in the cases when the viewport is emulating a different size, this is the size of the emulated viewport, for example the resolution for the [FixedResolutionViewport](https://pub.dev/documentation/flame/1.38.0/camera/FixedResolutionViewport-class.md).

</div>

<div>

## Implementation

``` dart
@override
Vector2 get virtualSize =>
    _virtualSizeOrNull ?? Vector2(resolution.width, resolution.height);
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelViewport](../../giant_toad/GiantToadPixelViewport-class.md)
4.  virtualSize property

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
