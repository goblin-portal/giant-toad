<div>

<div>

# <span class="kind-property">hashCode</span> property

</div>

<div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> get <span class="name">hashCode</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

The hash code for this object.

A hash code is a single integer which represents the state of the object that affects [operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md) comparisons.

All objects have hash codes. The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md) represents only the identity of the object, the same way as the default [operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md) implementation only considers objects equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.md)).

If [operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md) is overridden to use the object state instead, the hash code must also be changed to represent that state, otherwise the object cannot be used in hash based data structures like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.md) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md) implementations.

Hash codes must be the same for objects that are equal to each other according to [operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md). The hash code of an object should only change if the object changes in a way that affects equality. There are no further requirements for the hash codes. They need not be consistent between executions of the same program and there are no distribution guarantees.

Objects that are not equal are allowed to have the same hash code. It is even technically allowed that all instances have the same hash code, but if clashes happen too often, it may reduce the efficiency of hash-based data structures like [HashSet](https://api.flutter.dev/flutter/dart-collection/HashSet-class.md) or [HashMap](https://api.flutter.dev/flutter/dart-collection/HashMap-class.md).

If a subclass overrides [hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md), it should override the [operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md) operator as well to maintain consistency.

</div>

<div>

## Implementation

``` dart
external int get hashCode;
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_sprites](../../src_render_giant_toad_pixel_sprites/index.md)
3.  [GiantToadPixelPaint](../../src_render_giant_toad_pixel_sprites/GiantToadPixelPaint-mixin.md)
4.  hashCode property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
