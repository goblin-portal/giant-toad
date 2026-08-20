<div>

<div>

# <span class="kind-method">own\<<span class="type-parameter">T</span>\></span> method

</div>

<div>

<span class="returntype">T</span> <span class="name">own</span>\<<span class="type-parameter">T</span>\>(

1.  <span id="own-param-resource" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">resource</span>, </span>
2.  <span id="own-param-dispose" class="parameter"><span class="type-annotation">[FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> <span class="parameter-name">dispose</span>(</span>
    1.  <span id="param-resource" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">resource</span></span>

    )

)

</div>

<div>

## Implementation

``` dart
T own<T>(T resource, FutureOr<void> Function(T resource) dispose) {
  if (_disposed) {
    throw StateError('Cannot own resources after scene disposal.');
  }
  _disposers.add(() => dispose(resource));
  return resource;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadSceneResources](../../giant_toad/GiantToadSceneResources-class.md)
4.  own\<<span class="type-parameter">T</span>\> method

##### GiantToadSceneResources class

<div>

</div>

</div>

<div>

</div>
