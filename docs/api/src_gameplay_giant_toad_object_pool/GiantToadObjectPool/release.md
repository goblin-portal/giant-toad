<div>

<div>

# <span class="kind-method">release</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">release</span>(

1.  <span id="release-param-value" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">value</span></span>

)

</div>

<div>

## Implementation

``` dart
void release(T value) {
  reset?.call(value);
  _available.add(value);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_object_pool](../../src_gameplay_giant_toad_object_pool/index.md)
3.  [GiantToadObjectPool<span class="signature">\<<span class="type-parameter">T</span>\></span>](../../src_gameplay_giant_toad_object_pool/GiantToadObjectPool-class.md)
4.  release method

##### GiantToadObjectPool class

<div>

</div>

</div>

<div>

</div>
