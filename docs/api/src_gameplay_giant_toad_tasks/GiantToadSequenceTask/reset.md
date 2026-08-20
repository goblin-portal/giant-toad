<div>

<div>

# <span class="kind-method">reset</span> method

</div>

<div>

<div>

1.  @[override](https://api.flutter.dev/flutter/dart-core/override-constant.md)

</div>

<span class="returntype">void</span> <span class="name">reset</span>()

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Implementation

``` dart
@override
void reset() {
  index = 0;
  for (final child in children) {
    child.reset();
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tasks](../../src_gameplay_giant_toad_tasks/index.md)
3.  [GiantToadSequenceTask<span class="signature">\<<span class="type-parameter">C</span>\></span>](../../src_gameplay_giant_toad_tasks/GiantToadSequenceTask-class.md)
4.  reset method

##### GiantToadSequenceTask class

<div>

</div>

</div>

<div>

</div>
