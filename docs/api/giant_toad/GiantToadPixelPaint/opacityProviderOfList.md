<div>

<div>

# <span class="kind-method">opacityProviderOfList</span> method

</div>

<div>

<span class="returntype">[OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md)</span> <span class="name">opacityProviderOfList</span>({

1.  <span id="opacityProviderOfList-param-paintIds" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span>?</span> <span class="parameter-name">paintIds</span>, </span>
2.  <span id="opacityProviderOfList-param-includeLayers" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeLayers</span> = <span class="default-value">true</span>, </span>

})

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Creates an [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md) for given list of `paintIds` and can be used as `target` for [OpacityEffect](https://pub.dev/documentation/flame/1.38.0/effects/OpacityEffect-class.md).

When opacities of all the given `paintIds` are not same, this provider directly effects opacity of the most opaque paint. Additionally, it modifies other paints such that their respective opacity ratio with most opaque paint is maintained.

If `paintIds` is null or empty, all the paints are used for creating the [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md).

Note: Each call results in a new [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md) and hence the cached opacity ratios are calculated using opacities when this method was called.

</div>

<div>

## Implementation

``` dart
OpacityProvider opacityProviderOfList({
  List<T?>? paintIds,
  bool includeLayers = true,
}) {
  return _MultiPaintOpacityProvider(
    paintIds ?? (List<T?>.from(_paints.keys)..add(null)),
    this,
    includeLayers: includeLayers,
  );
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
4.  opacityProviderOfList method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
