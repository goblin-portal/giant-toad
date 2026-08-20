<div>

<div>

# <span class="kind-method">run\<<span class="type-parameter">T</span>\></span> static method

</div>

<div>

<span class="returntype">[Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> <span class="name">run</span>\<<span class="type-parameter">T</span>\>(

1.  <span id="run-param-operation" class="parameter"><span class="type-annotation">[FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> <span class="parameter-name">operation</span>()</span>

)

</div>

<div>

## Implementation

``` dart
static Future<T> run<T>(FutureOr<T> Function() operation) =>
    Isolate.run(operation);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadWorker](../../giant_toad/GiantToadWorker-class.md)
4.  run\<<span class="type-parameter">T</span>\> static method

##### GiantToadWorker class

<div>

</div>

</div>

<div>

</div>
