/// Explicit reusable-object pool for high-churn non-Component values.
///
/// Use Flame's `ComponentPool` for Flame components; this type exists for
/// records, vectors, command buffers, and other resettable Dart objects.
class GiantToadObjectPool<T> {
  GiantToadObjectPool({required this.create, this.reset});

  final T Function() create;
  final void Function(T value)? reset;
  final List<T> _available = [];

  int get availableCount => _available.length;

  T acquire() => _available.isEmpty ? create() : _available.removeLast();

  void release(T value) {
    reset?.call(value);
    _available.add(value);
  }
}
