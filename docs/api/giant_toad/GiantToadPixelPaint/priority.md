<div>

<div>

# <span class="kind-property">priority</span> property

</div>

<div>

<div>

<span class="returntype">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> get <span class="name">priority</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

Render priority of this component. This allows you to control the order in which your components are rendered.

Components are always updated and rendered in the order defined by what this number is when the component is added to the game. The smaller the priority, the sooner your component will be updated/rendered. It can be any integer (negative, zero, or positive). If two components share the same priority, they will be updated and rendered in the order they were added.

Note that setting the priority is relatively expensive if the component is already added to a component tree since all siblings have to be re-added to the parent.

</div>

<div>

## Implementation

``` dart
int get priority => _priority;
```

</div>

</div>

<div>

<div>

set <span class="name">priority</span> <span class="signature">(<span id="priority=-param-newPriority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">newPriority</span></span>)</span>

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
set priority(int newPriority) {
  if (_priority != newPriority) {
    _priority = newPriority;
    final parent = _parent;
    final game = findGame();
    if (game != null && parent != null) {
      game.enqueuePriorityChange(parent, this);
    }
  }
}
```

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadPixelPaint](../../giant_toad/GiantToadPixelPaint-mixin.md)
4.  priority property

##### GiantToadPixelPaint mixin

<div>

</div>

</div>

<div>

</div>
