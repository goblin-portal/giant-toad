<div>

<div>

# <span class="kind-constructor">GiantToadDialogue</span> constructor

</div>

<div>

<span class="name">GiantToadDialogue</span>({

1.  <span id="param-nodes" class="parameter">required <span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadDialogueNode](../../giant_toad/GiantToadDialogueNode-class.md)</span>\></span></span> <span class="parameter-name">nodes</span>, </span>

})

</div>

<div>

## Implementation

``` dart
GiantToadDialogue({required Iterable<GiantToadDialogueNode> nodes})
  : _nodes = {for (final node in nodes) node.id: node} {
  if (_nodes.isEmpty) {
    throw ArgumentError('Dialogue requires at least one node.');
  }
  if (_nodes.length != nodes.length) {
    throw ArgumentError('Dialogue node ids must be unique.');
  }
  for (final node in _nodes.values) {
    _validateTarget(node.next);
    for (final choice in node.choices) {
      _validateTarget(choice.next);
    }
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadDialogue](../../giant_toad/GiantToadDialogue-class.md)
4.  GiantToadDialogue.new constructor

##### GiantToadDialogue class

<div>

</div>

</div>

<div>

</div>
