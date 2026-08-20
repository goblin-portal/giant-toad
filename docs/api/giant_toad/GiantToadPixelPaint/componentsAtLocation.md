<div>

<div>

# <span class="kind-method">componentsAtLocation\<<span class="type-parameter">T</span>\></span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="name">componentsAtLocation</span>\<<span class="type-parameter">T</span>\>(

1.  <span id="componentsAtLocation-param-locationContext" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">locationContext</span>, </span>
2.  <span id="componentsAtLocation-param-nestedContexts" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span>?</span> <span class="parameter-name">nestedContexts</span>, </span>
3.  <span id="componentsAtLocation-param-transformContext" class="parameter"><span class="type-annotation">T?</span> <span class="parameter-name">transformContext</span>(</span>
    1.  <span id="param-" class="parameter"><span class="type-annotation">[CoordinateTransform](https://pub.dev/documentation/flame/1.38.0/components/CoordinateTransform-class.md)</span>, </span>
    2.  <span id="param-" class="parameter"><span class="type-annotation">T</span></span>

    ),
4.  <span id="componentsAtLocation-param-checkContains" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">checkContains</span>(</span>
    1.  <span id="param-" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>, </span>
    2.  <span id="param-" class="parameter"><span class="type-annotation">T</span></span>

    ),

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

This is a generic implementation of [componentsAtPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/componentsAtPoint.md); refer to those docs for context.

This will find components intersecting a given location context `T`. The context can be a single point or a more complicated structure. How to interpret the structure T is determined by the provided lambdas, `transformContext` and `checkContains`.

A simple choice of T would be a simple point (i.e. Vector2). In that case transformContext needs to be able to transform a Vector2 on the parent coordinate space into the coordinate space of a provided [CoordinateTransform](https://pub.dev/documentation/flame/1.38.0/components/CoordinateTransform-class.md); and `checkContains` must be able to determine if a given [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) "contains" the Vector2 (the definition of "contains" will vary and shall be determined by the nature of the chosen location context `T`).

</div>

<div>

## Implementation

``` dart
Iterable<Component> componentsAtLocation<T>(
  T locationContext,
  List<T>? nestedContexts,
  T? Function(CoordinateTransform, T) transformContext,
  bool Function(Component, T) checkContains,
) sync* {
  nestedContexts?.add(locationContext);
  if (_children != null) {
    for (final child in _children!.reversed()) {
      if (child is IgnoreEvents && child.ignoreEvents) {
        continue;
      }
      T? childPoint = locationContext;
      if (child is CoordinateTransform) {
        childPoint = transformContext(
          child as CoordinateTransform,
          locationContext,
        );
      }
      if (childPoint != null) {
        yield* child.componentsAtLocation(
          childPoint,
          nestedContexts,
          transformContext,
          checkContains,
        );
      }
    }
  }
  final shouldIgnoreEvents =
      this is IgnoreEvents && (this as IgnoreEvents).ignoreEvents;
  if (checkContains(this, locationContext) && !shouldIgnoreEvents) {
    yield this;
  }
  nestedContexts?.removeLast();
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
4.  componentsAtLocation\<<span class="type-parameter">T</span>\> method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
