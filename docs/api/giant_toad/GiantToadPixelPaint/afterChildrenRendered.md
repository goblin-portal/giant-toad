<div>

<div>

# <span class="kind-method">afterChildrenRendered</span> method

</div>

<div>

<div>

1.  @[protected](https://pub.dev/documentation/meta/1.19.0/meta/protected-constant.md)

</div>

<span class="returntype">void</span> <span class="name">afterChildrenRendered</span>(

1.  <span id="afterChildrenRendered-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Called once after all children have been rendered in [renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md).

Override to flush any state accumulated across [renderChild](https://pub.dev/documentation/flame/1.38.0/components/Component/renderChild.md) calls (e.g. a pending sprite batch).

</div>

<div>

## Implementation

``` dart
@protected
void afterChildrenRendered(Canvas canvas) {}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  afterChildrenRendered method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
