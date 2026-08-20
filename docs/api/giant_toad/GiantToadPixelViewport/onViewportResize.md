<div>

<div>

# <span class="kind-method">onViewportResize</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onViewportResize</span>()

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Called after the size of the viewport has changed.

The new size will be stored in the [size](https://pub.dev/documentation/flame/1.38.0/camera/Viewport/size.md) property. This method could be invoked either when the user explicitly changes the size of the viewport, or when the size changes automatically in response to the change in game canvas size.

A typical implementation would need to adjust the viewport's clip mask to match the new size.

</div>

<div>

## Implementation

``` dart
@override
void onViewportResize() {
  _clipRect = Rect.fromLTWH(0, 0, size.x, size.y);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelViewport](../../giant_toad/GiantToadPixelViewport-class.md)
4.  onViewportResize method

##### GiantToadPixelViewport class

<div>

</div>

</div>

<div>

</div>
