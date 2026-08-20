<div>

<div>

# <span class="kind-property">paintLayers</span> property

</div>

<div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>\></span></span> get <span class="name">paintLayers</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

List of paints to use (in order) during render.

</div>

<div>

## Implementation

``` dart
List<Paint> get paintLayers {
  if (!hasPaintLayers) {
    return paintLayersInternal = [];
  }
  return paintLayersInternal!;
}
```

</div>

</div>

<div>

<div>

set <span class="name">paintLayers</span> <span class="signature">(<span id="paintLayers=-param-paintLayers" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>\></span></span> <span class="parameter-name">paintLayers</span></span>)</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
set paintLayers(List<Paint> paintLayers) {
  paintLayersInternal = paintLayers;
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
4.  paintLayers property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
