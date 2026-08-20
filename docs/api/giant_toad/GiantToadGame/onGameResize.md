<div>

<div>

# <span class="kind-method">onGameResize</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onGameResize</span>(

1.  <span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

This passes the new size along to every component in the tree via their [Component.onGameResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onGameResize.md) method, enabling each one to make their decision of how to handle the resize event.

It also updates the `size` field of the class to be used by later added components and other methods. You can override it further to add more custom behavior, but you should seriously consider calling the super implementation as well.

</div>

<div>

## Implementation

``` dart
@override
void onGameResize(Vector2 size) {
  super.onGameResize(size);
  if (_initialCameraFramed) return;
  final visibleSize = camera.viewport.virtualSize;
  camera.viewfinder.position = Vector2(visibleSize.x / 2, visibleSize.y / 2);
  _initialCameraFramed = true;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadGame<span class="signature">\<<span class="type-parameter">W extends World</span>\></span>](../../giant_toad/GiantToadGame-class.md)
4.  onGameResize method

##### GiantToadGame class

<div>

</div>

</div>

<div>

</div>
