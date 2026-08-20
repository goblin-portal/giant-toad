<div>

<div>

# <span class="kind-method">add</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">add</span>(

1.  <span id="add-param-collider" class="parameter"><span class="type-annotation">[GiantToadWorldCollider](../../giant_toad/GiantToadWorldCollider-class.md)</span> <span class="parameter-name">collider</span></span>

)

</div>

<div>

## Implementation

``` dart
void add(GiantToadWorldCollider collider) {
  if (_colliders.any((entry) => entry.id == collider.id)) {
    throw StateError('Duplicate world collider id "${collider.id}".');
  }
  _colliders.add(collider);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadCollisionWorld](../../giant_toad/GiantToadCollisionWorld-class.md)
4.  add method

##### GiantToadCollisionWorld class

<div>

</div>

</div>

<div>

</div>
