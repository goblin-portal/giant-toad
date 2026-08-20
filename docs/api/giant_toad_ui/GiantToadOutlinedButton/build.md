<div>

<div>

# <span class="kind-method">build</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">[Widget](https://api.flutter.dev/flutter/widgets/Widget-class.md)</span> <span class="name">build</span>(

1.  <span id="build-param-context" class="parameter"><span class="type-annotation">[BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md)</span> <span class="parameter-name">context</span></span>

)

<div>

<span class="feature">override</span>

</div>

</div>

<div>

Describes the part of the user interface represented by this widget.

The framework calls this method when this widget is inserted into the tree in a given [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md) and when the dependencies of this widget change (e.g., an [InheritedWidget](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.md) referenced by this widget changes). This method can potentially be called in every frame and should not have any side effects beyond building a widget.

The framework replaces the subtree below this widget with the widget returned by this method, either by updating the existing subtree or by removing the subtree and inflating a new subtree, depending on whether the widget returned by this method can update the root of the existing subtree, as determined by calling [Widget.canUpdate](https://api.flutter.dev/flutter/widgets/Widget/canUpdate.md).

Typically implementations return a newly created constellation of widgets that are configured with information from this widget's constructor and from the given [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md).

The given [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md) contains information about the location in the tree at which this widget is being built. For example, the context provides the set of inherited widgets for this location in the tree. A given widget might be built with multiple different [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md) arguments over time if the widget is moved around the tree or if the widget is inserted into the tree in multiple places at once.

The implementation of this method must only depend on:

- the fields of the widget, which themselves must not change over time, and
- any ambient state obtained from the `context` using [BuildContext.dependOnInheritedWidgetOfExactType](https://api.flutter.dev/flutter/widgets/BuildContext/dependOnInheritedWidgetOfExactType.md).

If a widget's [build](../../giant_toad_ui/GiantToadOutlinedButton/build.md) method is to depend on anything else, use a [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.md) instead.

See also:

- [StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.md), which contains the discussion on performance considerations.

</div>

<div>

## Implementation

``` dart
@override
Widget build(BuildContext context) =>
    OutlinedButton(onPressed: onPressed, style: style, child: child);
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_ui](../../giant_toad_ui/index.md)
3.  [GiantToadOutlinedButton](../../giant_toad_ui/GiantToadOutlinedButton-class.md)
4.  build method

##### GiantToadOutlinedButton class

<div>

</div>

</div>

<div>

</div>
