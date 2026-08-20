<div>

<div>

# <span class="kind-method">addAll</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">addAll</span>(

1.  <span id="addAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

A convenience method to [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) multiple children at once.

</div>

<div>

## Implementation

``` dart
Future<void> addAll(Iterable<Component> components) async {
  List<Future<void>>? futures;
  for (final component in components) {
    final future = add(component);
    if (future is Future) {
      (futures ??= []).add(future);
    }
  }
  if (futures != null) {
    await Future.wait(futures);
  }
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
4.  addAll method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
