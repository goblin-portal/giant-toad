<div>

<div>

# <span class="kind-method">actionsFor</span> method

</div>

<div>

<span class="returntype">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadAction](../../giant_toad/GiantToadAction-class.md)</span>\></span></span> <span class="name">actionsFor</span>(

1.  <span id="actionsFor-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>

)

</div>

<div>

Returns actions activated by `control`, such as `keyW` or `gamepadSouth`.

</div>

<div>

## Implementation

``` dart
Iterable<GiantToadAction> actionsFor(String control) => _bindings.entries
    .where((entry) => entry.value.contains(control))
    .map((entry) => entry.key);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionMap](../../giant_toad/GiantToadActionMap-class.md)
4.  actionsFor method

##### GiantToadActionMap class

<div>

</div>

</div>

<div>

</div>
