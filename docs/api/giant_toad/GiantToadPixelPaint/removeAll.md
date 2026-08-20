<div>

<div>

# <span class="kind-method">removeAll</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">removeAll</span>(

1.  <span id="removeAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Removes all the children in the list and calls [onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md) for all of them and their children.

</div>

<div>

## Implementation

``` dart
void removeAll(Iterable<Component> components) {
  components.toList(growable: false).forEach(_removeChild);
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
4.  removeAll method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
