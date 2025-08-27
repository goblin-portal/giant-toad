import 'dart:async';
import 'dart:isolate';

/// Storage abstraction suitable for game settings and save-data backends.
abstract interface class GiantToadStore {
  Future<Object?> read(String key);
  Future<void> write(String key, Object? value);
  Future<void> remove(String key);
  Future<Set<String>> keys();
}

/// Deterministic in-memory [GiantToadStore], useful for tests and prototypes.
class GiantToadMemoryStore implements GiantToadStore {
  final Map<String, Object?> _values = {};

  @override
  Future<Object?> read(String key) async => _values[key];

  @override
  Future<void> write(String key, Object? value) async {
    _values[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    _values.remove(key);
  }

  @override
  Future<Set<String>> keys() async => Set.unmodifiable(_values.keys);
}

/// Runs a sendable operation outside the UI isolate.
abstract final class GiantToadWorker {
  static Future<T> run<T>(FutureOr<T> Function() operation) =>
      Isolate.run(operation);
}
