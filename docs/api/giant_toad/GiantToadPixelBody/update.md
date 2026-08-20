<div>

<div>

# <span class="kind-method">update</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">update</span>(

1.  <span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

This method is called periodically by the game engine to request that your component updates itself.

The time `dt` in seconds (with microseconds precision provided by Flutter) since the last update cycle. This time can vary according to hardware capacity, so make sure to update your state considering this. All components in the tree are always updated by the same amount. The time each one takes to update adds up to the next update cycle.

</div>

<div>

## Implementation

``` dart
@override
void update(double dt) {
  final original = Rect.fromLTWH(position.x, position.y, size.x, size.y);
  final desired = velocity * dt;
  _applyPlatformCarry(original, desired);
  var result = collision.moveAndSlide(original, desired);
  result = _landOnPlatform(original, desired, result);
  position.setFrom(result.position);
  if (pixelSnap) {
    position.setValues(
      position.x.roundToDouble(),
      position.y.roundToDouble(),
    );
  }
  _stopBlockedVelocity(result);
  lastMove = result;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelBody](../../giant_toad/GiantToadPixelBody-class.md)
4.  update method

##### GiantToadPixelBody class

<div>

</div>

</div>

<div>

</div>
