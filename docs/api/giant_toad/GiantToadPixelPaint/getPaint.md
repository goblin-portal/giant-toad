<div>

<div>

# <span class="kind-method">getPaint</span> method

</div>

<div>

<span class="returntype">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span> <span class="name">getPaint</span>(\[

1.  <span id="getPaint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>

\])

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Gets a paint from the collection.

Returns the main paint if no `paintId` is provided.

</div>

<div>

## Implementation

``` dart
Paint getPaint([T? paintId]) {
  if (paintId == null) {
    return this.paint;
  }

  final paint = _paints[paintId];

  if (paint == null) {
    throw ArgumentError('No Paint found for $paintId');
  }

  return paint;
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
4.  getPaint method

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
