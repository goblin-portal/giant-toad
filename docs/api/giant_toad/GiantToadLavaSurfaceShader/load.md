<div>

<div>

# <span class="kind-method">load</span> static method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadLavaSurfaceShader](../../giant_toad/GiantToadLavaSurfaceShader-class.md)</span>\></span></span> <span class="name">load</span>()

</div>

<div>

## Implementation

``` dart
static Future<GiantToadLavaSurfaceShader> load() async {
  try {
    return GiantToadLavaSurfaceShader._(
      await FragmentProgram.fromAsset(asset),
    );
  } on Exception {
    // A package's own test bundle exposes its shader without the packages/
    // prefix; consuming applications use [asset].
    return GiantToadLavaSurfaceShader._(
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
3.  [GiantToadLavaSurfaceShader](../../giant_toad/GiantToadLavaSurfaceShader-class.md)
4.  load static method

##### GiantToadLavaSurfaceShader class

<div>

</div>

</div>

<div>

</div>
