<div>

<div>

# <span class="kind-constructor">GiantToadAmbientLightComponent</span> constructor

</div>

<div>

<span class="name">GiantToadAmbientLightComponent</span>({

1.  <span id="param-size" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">size</span>, </span>
2.  <span id="param-ambientColor" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">ambientColor</span> = <span class="default-value">const Color(0xaa000000)</span>, </span>
3.  <span id="param-pixelSize" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelSize</span> = <span class="default-value">1</span>, </span>
4.  <span id="param-lights" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAmbientLight](../../src_render_giant_toad_ambient_lighting/GiantToadAmbientLight-class.md)</span>\></span></span> <span class="parameter-name">lights</span> = <span class="default-value">const \[\]</span>, </span>
5.  <span id="param-priority" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">priority</span> = <span class="default-value">0x7ffffffd</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadAmbientLightComponent({
  required super.size,
  this.ambientColor = const Color(0xaa000000),
  this.pixelSize = 1,
  Iterable<GiantToadAmbientLight> lights = const [],
  super.priority = 0x7ffffffd,
}) : lights = List.of(lights);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_ambient_lighting](../../src_render_giant_toad_ambient_lighting/index.md)
3.  [GiantToadAmbientLightComponent](../../src_render_giant_toad_ambient_lighting/GiantToadAmbientLightComponent-class.md)
4.  GiantToadAmbientLightComponent.new constructor

##### GiantToadAmbientLightComponent class

<div>

</div>

</div>

<div>

</div>
