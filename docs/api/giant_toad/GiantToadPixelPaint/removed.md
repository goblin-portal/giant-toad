<div>

<div>

# <span class="kind-property">removed</span> property

</div>

<div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> get <span class="name">removed</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

A future that completes when this component is removed from its parent.

If the component is already removed (see [isRemoved](https://pub.dev/documentation/flame/1.38.0/components/Component/isRemoved.md)), this returns an already completed future.

</div>

<div>

## Implementation

``` dart
Future<void> get removed {
  return isRemoved
      ? Future.value()
      : (_removeCompleter ??= Completer<void>()).future;
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
4.  removed property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
