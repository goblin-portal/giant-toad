<div>

<div>

# <span class="kind-method">restore</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">restore</span>(

1.  <span id="restore-param-nodeId" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">nodeId</span></span>

)

</div>

<div>

## Implementation

``` dart
void restore(String? nodeId) {
  if (nodeId == null) {
    _current = null;
  } else {
    _enter(nodeId);
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
4.  restore method

##### GiantToadDialogue class

<div>

</div>

</div>

<div>

</div>
