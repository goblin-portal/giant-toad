<div>

<div>

# <span class="kind-method">create</span> method

</div>

<div>

<span class="returntype">T</span> <span class="name">create</span>(

1.  <span id="create-param-object" class="parameter"><span class="type-annotation">[GiantToadMapObject](../../giant_toad/GiantToadMapObject-class.md)</span> <span class="parameter-name">object</span></span>

)

</div>

<div>

## Implementation

``` dart
T create(GiantToadMapObject object) {
  final factory = _factories[object.type];
  if (factory == null) {
    throw StateError(
      'No map object factory registered for "${object.type}".',
    );
  }
  return factory(object);
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
4.  create method

##### GiantToadMapObjectFactories class

<div>

</div>

</div>

<div>

</div>
