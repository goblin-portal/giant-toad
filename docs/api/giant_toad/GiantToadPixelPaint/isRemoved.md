<div>

<div>

# <span class="kind-property">isRemoved</span> property

</div>

<div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> get <span class="name">isRemoved</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Whether the component has been removed. Originally this flag is `false`, but it becomes `true` after the component was mounted and then removed from its parent. The flag becomes `false` again when the component is mounted to a new parent.

</div>

<div>

## Implementation

``` dart
bool get isRemoved => (_state & _removed) != 0;
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  isRemoved property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
