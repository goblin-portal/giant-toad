<div>

<div>

# <span class="kind-constructor">GiantToadPixelCameraController</span> constructor

</div>

<div>

<span class="name">GiantToadPixelCameraController</span>({

1.  <span id="param-camera" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">camera</span>, </span>
2.  <span id="param-target" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">target</span>, </span>
3.  <span id="param-followSpeed" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">followSpeed</span> = <span class="default-value">12</span>, </span>
4.  <span id="param-deadzone" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">deadzone</span> = <span class="default-value">Rect.zero</span>, </span>
5.  <span id="param-lookAhead" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">lookAhead</span> = <span class="default-value">0</span>, </span>
6.  <span id="param-worldBounds" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">worldBounds</span>, </span>
7.  <span id="param-pixelSnap" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pixelSnap</span> = <span class="default-value">true</span>, </span>
8.  <span id="param-maxShake" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">maxShake</span> = <span class="default-value">6</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadPixelCameraController({
  required this.camera,
  this.target,
  this.followSpeed = 12,
  this.deadzone = Rect.zero,
  this.lookAhead = 0,
  this.worldBounds,
  this.pixelSnap = true,
  this.maxShake = 6,
}) {
  if (followSpeed < 0 || lookAhead < 0 || maxShake < 0) {
    throw ArgumentError(
      'Camera speed, look-ahead, and shake must be non-negative.',
    );
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_pixel_camera](../../src_gameplay_giant_toad_pixel_camera/index.md)
3.  [GiantToadPixelCameraController](../../src_gameplay_giant_toad_pixel_camera/GiantToadPixelCameraController-class.md)
4.  GiantToadPixelCameraController.new constructor

##### GiantToadPixelCameraController class

<div>

</div>

</div>

<div>

</div>
