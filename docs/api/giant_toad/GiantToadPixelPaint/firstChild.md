<div>

<div>

# <span class="kind-method">firstChild\<<span class="type-parameter">T extends Component</span>\></span> method

</div>

<div>

<span class="returntype">T?</span> <span class="name">firstChild</span>\<<span class="type-parameter">T extends Component</span>\>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Returns the first child that matches the given type `T`, or null if there are no such children.

</div>

<div>

## Implementation

``` dart
T? firstChild<T extends Component>() {
  return children.whereType<T>().firstOrNull;
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
4.  firstChild\<<span class="type-parameter">T extends Component</span>\> method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
