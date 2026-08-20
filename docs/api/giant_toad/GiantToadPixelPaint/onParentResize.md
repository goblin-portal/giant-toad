<div>

<div>

# <span class="kind-method">onParentResize</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">onParentResize</span>(

1.  <span id="onParentResize-param-maxSize" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">maxSize</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Called whenever the parent of this component changes size; and also once before [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

The component may change its own size or perform layout in response to this call. If the component changes size, then it should call [onParentResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onParentResize.md) for all its children.

</div>

<div>

## Implementation

``` dart
void onParentResize(Vector2 maxSize) {}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  onParentResize method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
