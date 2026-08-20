<div>

<div>

# <span class="kind-method">remove</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">remove</span>(

1.  <span id="remove-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Removes a component from the component tree.

This will call [onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md) for the component and its children, but only if there was an [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md) call previously, i.e. when removing a component that was properly mounted.

A component can be removed even before it finishes mounting, however such component cannot be added back into the tree until it at least finishes loading.

</div>

<div>

## Implementation

``` dart
void remove(Component component) => _removeChild(component);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  remove method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
