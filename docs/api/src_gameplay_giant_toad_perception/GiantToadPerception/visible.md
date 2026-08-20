<div>

<div>

# <span class="kind-method">visible\<<span class="type-parameter">T</span>\></span> static method

</div>

<div>

<span class="returntype">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadPerceptionResult](../../src_gameplay_giant_toad_perception/GiantToadPerceptionResult-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span> <span class="name">visible</span>\<<span class="type-parameter">T</span>\>({

1.  <span id="visible-param-origin" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">origin</span>, </span>
2.  <span id="visible-param-facing" class="parameter">required <span class="type-annotation">dynamic</span> <span class="parameter-name">facing</span>, </span>
3.  <span id="visible-param-radius" class="parameter">required <span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">radius</span>, </span>
4.  <span id="visible-param-targets" class="parameter">required <span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadPerceptionTarget](../../src_gameplay_giant_toad_perception/GiantToadPerceptionTarget-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span>\></span></span> <span class="parameter-name">targets</span>, </span>
5.  <span id="visible-param-fieldOfView" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">fieldOfView</span> = <span class="default-value">math.pi \* 2</span>, </span>
6.  <span id="visible-param-tag" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">tag</span>, </span>
7.  <span id="visible-param-isOccluded" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">isOccluded</span>(</span>
    1.  <span id="param-origin" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">origin</span>, </span>
    2.  <span id="param-target" class="parameter"><span class="type-annotation">dynamic</span> <span class="parameter-name">target</span></span>

    )?,

})

</div>

<div>

## Implementation

``` dart
static List<GiantToadPerceptionResult<T>> visible<T>({
  required Vector2 origin,
  required Vector2 facing,
  required double radius,
  required Iterable<GiantToadPerceptionTarget<T>> targets,
  double fieldOfView = math.pi * 2,
  String? tag,
  bool Function(Vector2 origin, Vector2 target)? isOccluded,
}) {
  if (radius < 0 || fieldOfView < 0 || fieldOfView > math.pi * 2) {
    throw ArgumentError('Invalid perception radius or field of view.');
  }
  final radiusSquared = radius * radius;
  final fullCircle = fieldOfView >= math.pi * 2 - 1e-9;
  final facingNormal = facing.isZero() ? Vector2(1, 0) : facing.normalized();
  final minimumDot = math.cos(fieldOfView / 2);
  final result = <GiantToadPerceptionResult<T>>[];
  for (final target in targets) {
    if (tag != null && !target.tags.contains(tag)) continue;
    final delta = target.position - origin;
    final distanceSquared = delta.length2;
    if (distanceSquared > radiusSquared) continue;
    if (!fullCircle &&
        distanceSquared > 0 &&
        delta.normalized().dot(facingNormal) < minimumDot) {
      continue;
    }
    if (isOccluded?.call(origin, target.position) ?? false) continue;
    result.add(
      GiantToadPerceptionResult(
        target: target,
        distance: math.sqrt(distanceSquared),
      ),
    );
  }
  result.sort((a, b) {
    final distance = a.distance.compareTo(b.distance);
    return distance != 0
        ? distance
        : a.target.position.y.compareTo(b.target.position.y);
  });
  return List.unmodifiable(result);
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_perception](../../src_gameplay_giant_toad_perception/index.md)
3.  [GiantToadPerception](../../src_gameplay_giant_toad_perception/GiantToadPerception-class.md)
4.  visible\<<span class="type-parameter">T</span>\> static method

##### GiantToadPerception class

<div>

</div>

</div>

<div>

</div>
