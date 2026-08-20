<div>

<div>

# <span class="kind-method">advance</span> method

</div>

<div>

<span class="returntype">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="name">advance</span>()

</div>

<div>

## Implementation

``` dart
bool advance() {
  final node = _current;
  if (node == null || node.choices.isNotEmpty) return false;
  if (node.next == null) {
    _current = null;
    return true;
  }
  _enter(node.next!);
  return true;
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
4.  advance method

##### GiantToadDialogue class

<div>

</div>

</div>

<div>

</div>
