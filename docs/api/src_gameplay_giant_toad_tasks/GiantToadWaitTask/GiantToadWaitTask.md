<div>

<div>

# <span class="kind-constructor">GiantToadWaitTask\<<span class="type-parameter">C</span>\></span> constructor

</div>

<div>

<span class="name">GiantToadWaitTask\<<span class="type-parameter">C</span>\></span>(

1.  <span id="param-duration" class="parameter"><span class="type-annotation">[Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.md)</span> <span class="parameter-name">duration</span></span>

)

</div>

<div>

## Implementation

``` dart
GiantToadWaitTask(this.duration)
  : assert(!duration.isNegative),
    _remaining = duration.inMicroseconds / Duration.microsecondsPerSecond;
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_tasks](../../src_gameplay_giant_toad_tasks/index.md)
3.  [GiantToadWaitTask<span class="signature">\<<span class="type-parameter">C</span>\></span>](../../src_gameplay_giant_toad_tasks/GiantToadWaitTask-class.md)
4.  GiantToadWaitTask.new constructor

##### GiantToadWaitTask class

<div>

</div>

</div>

<div>

</div>
