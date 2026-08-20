<div>

<div>

# <span class="kind-method">createState</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[State](https://api.flutter.dev/flutter/widgets/State-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadDropdown](../../giant_toad_ui/GiantToadDropdown-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span> <span class="name">createState</span>()

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Creates the mutable state for this widget at a given location in the tree.

Subclasses should override this method to return a newly created instance of their associated [State](https://api.flutter.dev/flutter/widgets/State-class.md) subclass:

``` dart
@override
State<SomeWidget> createState() => _SomeWidgetState();
```

The framework can call this method multiple times over the lifetime of a [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.md). For example, if the widget is inserted into the tree in multiple locations, the framework will create a separate [State](https://api.flutter.dev/flutter/widgets/State-class.md) object for each location. Similarly, if the widget is removed from the tree and later inserted into the tree again, the framework will call [createState](../../giant_toad_ui/GiantToadDropdown/createState.md) again to create a fresh [State](https://api.flutter.dev/flutter/widgets/State-class.md) object, simplifying the lifecycle of [State](https://api.flutter.dev/flutter/widgets/State-class.md) objects.

</div>

<div>

## Implementation

``` dart
@override
State<GiantToadDropdown<T>> createState() => _GiantToadDropdownState<T>();
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_ui](../../giant_toad_ui/index.md)
3.  [GiantToadDropdown<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad_ui/GiantToadDropdown-class.md)
4.  createState method

##### GiantToadDropdown class

<div>

</div>

</div>

<div>

</div>
