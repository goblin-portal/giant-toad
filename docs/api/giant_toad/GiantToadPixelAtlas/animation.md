<div>

<div>

# <span class="kind-method">animation</span> method

</div>

<div>

<span class="returntype">[SpriteAnimation](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimation-class.md)</span> <span class="name">animation</span>({

1.  <span id="animation-param-row" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">row</span>, </span>
2.  <span id="animation-param-from" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">from</span>, </span>
3.  <span id="animation-param-count" class="parameter">required <span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">count</span>, </span>
4.  <span id="animation-param-stepTime" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">stepTime</span>, </span>
5.  <span id="animation-param-loop" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">loop</span> = <span class="default-value">true</span>, </span>

})

</div>

<div>

## Implementation

``` dart
SpriteAnimation animation({
  required int row,
  required int from,
  required int count,
  required double stepTime,
  bool loop = true,
}) {
  if (row < 0 || from < 0 || count <= 0 || stepTime <= 0) {
    throw ArgumentError(
      'Animation row/from must be non-negative and count/stepTime positive.',
    );
  }
  return sheet.createAnimation(
    row: row,
    from: from,
    to: from + count,
    stepTime: stepTime,
    loop: loop,
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
3.  [GiantToadPixelAtlas](../../giant_toad/GiantToadPixelAtlas-class.md)
4.  animation method

##### GiantToadPixelAtlas class

<div>

</div>

</div>

<div>

</div>
