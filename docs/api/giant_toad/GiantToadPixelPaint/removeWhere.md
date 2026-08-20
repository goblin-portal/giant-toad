<div>

<div>

# <span class="kind-method">removeWhere</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">removeWhere</span>(

1.  <span id="removeWhere-param-test" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">test</span>(</span>
    1.  <span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>

    )

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Removes all the children for which the `test` function returns true.

</div>

<div>

## Implementation

``` dart
void removeWhere(bool Function(Component component) test) {
  children.where(test).toList(growable: false).forEach(_removeChild);
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
4.  removeWhere method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
