<div>

<div>

# <span class="kind-method">set</span> method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="name">set</span>(

1.  <span id="set-param-key" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">key</span>, </span>
2.  <span id="set-param-value" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">value</span></span>

)

</div>

<div>

## Implementation

``` dart
Future<void> set(String key, Object? value) =>
    store.write('$keyPrefix$key', value);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_persistence](../../src_runtime_giant_toad_persistence/index.md)
3.  [GiantToadSettings](../../src_runtime_giant_toad_persistence/GiantToadSettings-class.md)
4.  set method

##### GiantToadSettings class

<div>

</div>

</div>

<div>

</div>
