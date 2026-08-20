<div>

<div>

# <span class="kind-method">cancel</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">cancel</span>()

</div>

<div>

## Implementation

``` dart
void cancel() {
  if (status != GiantToadTaskStatus.running) return;
  task.cancel();
  status = GiantToadTaskStatus.cancelled;
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tasks](../../src_gameplay_giant_toad_tasks/index.md)
3.  [GiantToadTaskComponent<span class="signature">\<<span class="type-parameter">C</span>\></span>](../../src_gameplay_giant_toad_tasks/GiantToadTaskComponent-class.md)
4.  cancel method

##### GiantToadTaskComponent class

<div>

</div>

</div>

<div>

</div>
