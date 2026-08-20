<div>

<div>

# <span class="kind-method">isBound</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">isBound</span>(

1.  <span id="isBound-param-action" class="parameter"><span class="type-annotation">[GiantToadAction](../../giant_toad/GiantToadAction-class.md)</span> <span class="parameter-name">action</span>, </span>
2.  <span id="isBound-param-control" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">control</span></span>

)

</div>

<div>

## Implementation

``` dart
bool isBound(GiantToadAction action, String control) =>
    _bindings[action]?.contains(control) ?? false;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadActionMap](../../giant_toad/GiantToadActionMap-class.md)
4.  isBound method

##### GiantToadActionMap class

<div>

</div>

</div>

<div>

</div>
