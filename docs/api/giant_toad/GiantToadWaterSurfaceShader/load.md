<div>

<div>

# <span class="kind-method">load</span> static method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadWaterSurfaceShader](../../giant_toad/GiantToadWaterSurfaceShader-class.md)</span>\></span></span> <span class="name">load</span>()

</div>

<div>

## Implementation

``` dart
static Future<GiantToadWaterSurfaceShader> load() async {
  try {
    return GiantToadWaterSurfaceShader._(
      await FragmentProgram.fromAsset(asset),
    );
  } on Exception {
    return GiantToadWaterSurfaceShader._(
      await FragmentProgram.fromAsset(packageAsset),
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
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadWaterSurfaceShader](../../giant_toad/GiantToadWaterSurfaceShader-class.md)
4.  load static method

##### GiantToadWaterSurfaceShader class

<div>

</div>

</div>

<div>

</div>
