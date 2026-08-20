<div>

<div>

# <span class="kind-method">opacityProviderOf</span> method

</div>

<div>

<span class="returntype">[OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md)</span> <span class="name">opacityProviderOf</span>(

1.  <span id="opacityProviderOf-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">paintId</span></span>

)

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Creates an [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md) for given `paintId` and can be used as `target` for [OpacityEffect](https://pub.dev/documentation/flame/1.38.0/effects/OpacityEffect-class.md).

</div>

<div>

## Implementation

``` dart
OpacityProvider opacityProviderOf(T paintId) {
  return _ProxyOpacityProvider(paintId, this);
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
4.  opacityProviderOf method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
