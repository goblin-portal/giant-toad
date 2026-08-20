<div>

<div>

# <span class="kind-method">onLoad</span> method

</div>

<div>

<span class="returntype">[FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">onLoad</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Late initialization method for [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md).

Usually, this method is the main place where you initialize your component. This has several advantages over the traditional constructor:

- this method can be `async`;
- it is invoked when the size of the game canvas is already known.

If your loading logic requires knowing the size of the game canvas, then add [HasGameReference](https://pub.dev/documentation/flame/1.38.0/components/HasGameReference-mixin.md) mixin and then query `game.size` or `game.canvasSize`.

The default implementation returns `null`, indicating that there is no need to await anything. When overriding this method, you have a choice whether to create a regular or async function.

If you need an asynchronous [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md), make your override return non-nullable `Future<void>`:

``` dart
@override
Future<void> onLoad() async {
  // your code here
}
```

Alternatively, if your [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) function doesn't use any `await`ing, then you can declare it as a regular method returning `void`:

``` dart
@override
void onLoad() {
  // your code here
}
```

The engine ensures that this method will be called exactly once during the lifetime of the [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) object. Do not call this method manually.

</div>

<div>

## Implementation

``` dart
FutureOr<void> onLoad() => null;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  onLoad method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
