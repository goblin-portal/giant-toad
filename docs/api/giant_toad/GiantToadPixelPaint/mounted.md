<div>

<div>

# <span class="kind-property">mounted</span> property

</div>

<div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> get <span class="name">mounted</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

A future that will complete once the component is mounted on its parent.

If the component is already mounted (see [isMounted](https://pub.dev/documentation/flame/1.38.0/components/Component/isMounted.md)), this returns an already completed future.

</div>

<div>

## Implementation

``` dart
Future<void> get mounted {
  return isMounted
      ? Future.value()
      : (_mountCompleter ??= Completer<void>()).future;
}
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
4.  mounted property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
