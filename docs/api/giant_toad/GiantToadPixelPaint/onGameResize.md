<div>

<div>

# <span class="kind-method">onGameResize</span> method

</div>

<div>

<div>

1.  @[mustCallSuper](https://pub.dev/documentation/meta/1.19.0/meta/mustCallSuper-constant.md)

</div>

<span class="returntype">void</span> <span class="name">onGameResize</span>(

1.  <span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Called whenever the size of the top-level Canvas changes.

In addition, this method will be invoked before each [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

</div>

<div>

## Implementation

``` dart
@mustCallSuper
void onGameResize(Vector2 size) => handleResize(size);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  onGameResize method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
