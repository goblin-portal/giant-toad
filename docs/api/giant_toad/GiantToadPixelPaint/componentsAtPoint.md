<div>

<div>

# <span class="kind-method">componentsAtPoint</span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="name">componentsAtPoint</span>(

1.  <span id="componentsAtPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, \[</span>
2.  <span id="componentsAtPoint-param-nestedPoints" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span>?</span> <span class="parameter-name">nestedPoints</span></span>

\])

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

An iterable of descendant components intersecting the given point. The `point` is in the local coordinate space.

More precisely, imagine a ray originating at a certain point (x, y) on the screen, and extending perpendicularly to the screen's surface into your game's world. The purpose of this method is to find all components that intersect with this ray, in the order from those that are closest to the user to those that are farthest.

The return value is an [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md) of components. If the `nestedPoints` parameter is given, then it will also report the points of intersection for each component in its local coordinate space. Specifically, the last element in the list is the point in the coordinate space of the returned component, the element before the last is in that component's parent's coordinate space, and so on. The `nestedPoints` list must be growable and modifiable.

The default implementation relies on the [CoordinateTransform](https://pub.dev/documentation/flame/1.38.0/components/CoordinateTransform-class.md) interface to translate from the parent's coordinate system into the local one. Make sure that your component implements this interface if it alters the coordinate system when rendering.

If your component overrides [renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md), then it almost certainly needs to override this method as well, so that this method can find all rendered components wherever they are.

</div>

<div>

## Implementation

``` dart
Iterable<Component> componentsAtPoint(
  Vector2 point, [
  List<Vector2>? nestedPoints,
]) {
  return componentsAtLocation<Vector2>(
    point,
    nestedPoints,
    (transform, point) => transform.parentToLocal(point),
    (component, point) => component.containsLocalPoint(point),
  );
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  componentsAtPoint method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
