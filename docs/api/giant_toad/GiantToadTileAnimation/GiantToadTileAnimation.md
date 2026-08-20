<div>

<div>

# <span class="kind-constructor">GiantToadTileAnimation</span> constructor

</div>

<div>

<span class="name">GiantToadTileAnimation</span>(

1.  <span id="param-frames" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadTileAnimationFrame](../../giant_toad/GiantToadTileAnimationFrame-class.md)</span>\></span></span> <span class="parameter-name">frames</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadTileAnimation(Iterable<GiantToadTileAnimationFrame> frames)
  : frames = List.unmodifiable(frames),
    totalDuration = frames.fold(
      Duration.zero,
      (total, frame) => total + frame.duration,
    ) {
  if (this.frames.isEmpty ||
      this.frames.any((frame) => frame.duration <= Duration.zero)) {
    throw ArgumentError('Tile animation frames require positive durations.');
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadTileAnimation](../../giant_toad/GiantToadTileAnimation-class.md)
4.  GiantToadTileAnimation.new constructor

##### GiantToadTileAnimation class

<div>

</div>

</div>

<div>

</div>
