<div>

<div>

# <span class="kind-method">acquire</span> method

</div>

<div>

<span class="returntype">T</span> <span class="name">acquire</span>()

</div>

<div>

## Implementation

``` dart
T acquire() => _available.isEmpty ? create() : _available.removeLast();
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadObjectPool<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../giant_toad/GiantToadObjectPool-class.md)
4.  acquire method

##### GiantToadObjectPool class

<div>

</div>

</div>

<div>

</div>
