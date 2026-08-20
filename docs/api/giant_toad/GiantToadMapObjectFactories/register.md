<div>

<div>

# <span class="kind-method">register</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">register</span>(

1.  <span id="register-param-type" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">type</span>, </span>
2.  <span id="register-param-factory" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">factory</span>(</span>
    1.  <span id="create-param-object" class="parameter"><span class="type-annotation">[GiantToadMapObject](../../giant_toad/GiantToadMapObject-class.md)</span> <span class="parameter-name">object</span></span>

    )

)

</div>

<div>

## Implementation

``` dart
void register(String type, T Function(GiantToadMapObject object) factory) {
  if (type.isEmpty) throw ArgumentError.value(type, 'type');
  if (_factories.containsKey(type)) {
    throw StateError(
      'A map object factory for "$type" is already registered.',
    );
  }
  _factories[type] = factory;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapObjectFactories<span class="signature">\<<span class="type-parameter">T extends Object</span>\></span>](../../giant_toad/GiantToadMapObjectFactories-class.md)
4.  register method

##### GiantToadMapObjectFactories class

<div>

</div>

</div>

<div>

</div>
