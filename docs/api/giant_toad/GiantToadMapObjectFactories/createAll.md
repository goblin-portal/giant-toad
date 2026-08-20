<div>

<div>

# <span class="kind-method">createAll</span> method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> <span class="name">createAll</span>(

1.  <span id="createAll-param-objects" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMapObject](../../giant_toad/GiantToadMapObject-class.md)</span>\></span></span> <span class="parameter-name">objects</span></span>

)

</div>

<div>

## Implementation

``` dart
List<T> createAll(Iterable<GiantToadMapObject> objects) =>
    objects.map(create).toList(growable: false);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadMapObjectFactories<span class="signature">\<<span class="type-parameter">T extends Object</span>\></span>](../../giant_toad/GiantToadMapObjectFactories-class.md)
4.  createAll method

##### GiantToadMapObjectFactories class

<div>

</div>

</div>

<div>

</div>
