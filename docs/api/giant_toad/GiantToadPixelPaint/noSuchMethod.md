<div>

<div>

# <span class="kind-method">noSuchMethod</span> method

</div>

<div>

<span class="returntype">dynamic</span> <span class="name">noSuchMethod</span>(

1.  <span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Invoked when a nonexistent method or property is accessed.

A dynamic member invocation can attempt to call a member which doesn't exist on the receiving object. Example:

``` dart
dynamic object = 1;
object.add(42); // Statically allowed, run-time error
```

This invalid code will invoke the `noSuchMethod` method of the integer `1` with an [Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md) representing the `.add(42)` call and arguments (which then throws).

Classes can override [noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md) to provide custom behavior for such invalid dynamic invocations.

A class with a non-default [noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md) invocation can also omit implementations for members of its interface. Example:

``` dart
class MockList<T> implements List<T> {
  noSuchMethod(Invocation invocation) {
    log(invocation);
    super.noSuchMethod(invocation); // Will throw.
  }
}
void main() {
  MockList().add(42);
}
```

This code has no compile-time warnings or errors even though the `MockList` class has no concrete implementation of any of the `List` interface methods. Calls to `List` methods are forwarded to `noSuchMethod`, so this code will `log` an invocation similar to `Invocation.method(#add, [42])` and then throw.

If a value is returned from `noSuchMethod`, it becomes the result of the original invocation. If the value is not of a type that can be returned by the original invocation, a type error occurs at the invocation.

The default behavior is to throw a [NoSuchMethodError](https://api.flutter.dev/flutter/dart-core/NoSuchMethodError-class.md).

</div>

<div>

## Implementation

``` dart
@pragma("vm:entry-point")
@pragma("wasm:entry-point")
external dynamic noSuchMethod(Invocation invocation);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  noSuchMethod method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
