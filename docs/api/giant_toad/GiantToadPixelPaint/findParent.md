<div>

<div>

# <span class="kind-method">findParent\<<span class="type-parameter">T extends Component</span>\></span> method

</div>

<div>

<span class="returntype">T?</span> <span class="name">findParent</span>\<<span class="type-parameter">T extends Component</span>\>({

1.  <span id="findParent-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Returns the closest parent further up the hierarchy that satisfies type=T, or null if no such parent can be found.

If `includeSelf` is set to true (default is false) then the component which the call is made for is also included in the search.

</div>

<div>

## Implementation

``` dart
T? findParent<T extends Component>({bool includeSelf = false}) {
  return ancestors(includeSelf: includeSelf).whereType<T>().firstOrNull;
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
4.  findParent\<<span class="type-parameter">T extends Component</span>\> method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
