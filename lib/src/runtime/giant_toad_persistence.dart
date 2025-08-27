import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'giant_toad_systems.dart';

/// Cross-platform Flutter store backed by the asynchronous shared-preferences
/// API. JSON encoding gives every platform the same supported value shapes.
class GiantToadPreferencesStore implements GiantToadStore {
  GiantToadPreferencesStore._(this._preferences, String namespace)
    : _prefix = '$namespace.';

  static Future<GiantToadPreferencesStore> create({
    String namespace = 'giant_toad',
  }) async => GiantToadPreferencesStore._(
    await SharedPreferences.getInstance(),
    namespace,
  );

  final String _prefix;
  final SharedPreferences _preferences;

  String _key(String key) {
    if (key.isEmpty) throw ArgumentError.value(key, 'key', 'must not be empty');
    return '$_prefix$key';
  }

  @override
  Future<Object?> read(String key) async {
    final source = _preferences.getString(_key(key));
    return source == null ? null : jsonDecode(source);
  }

  @override
  Future<void> write(String key, Object? value) async {
    await _preferences.setString(_key(key), jsonEncode(value));
  }

  @override
  Future<void> remove(String key) async {
    await _preferences.remove(_key(key));
  }

  @override
  Future<Set<String>> keys() async => {
    for (final key in _preferences.getKeys())
      if (key.startsWith(_prefix)) key.substring(_prefix.length),
  };
}

/// Versioned JSON save payload.
class GiantToadSaveData {
  const GiantToadSaveData({required this.schemaVersion, required this.values});

  final int schemaVersion;
  final Map<String, Object?> values;

  factory GiantToadSaveData.fromJson(Map<String, Object?> json) {
    final version = json['schemaVersion'];
    final values = json['values'];
    if (version is! int || version < 1 || values is! Map) {
      throw const FormatException('Invalid Giant Toad save data.');
    }
    return GiantToadSaveData(
      schemaVersion: version,
      values: Map<String, Object?>.from(values),
    );
  }

  Map<String, Object?> toJson() => {
    'schemaVersion': schemaVersion,
    'values': values,
  };
}

typedef GiantToadSaveMigration =
    GiantToadSaveData Function(GiantToadSaveData oldData);

/// Named save slots with explicit schema migration.
class GiantToadSaveSlots {
  GiantToadSaveSlots({
    required this.store,
    required this.currentSchemaVersion,
    this.migrations = const {},
    this.keyPrefix = 'save.',
  }) {
    if (currentSchemaVersion < 1) {
      throw ArgumentError.value(
        currentSchemaVersion,
        'currentSchemaVersion',
        'must be positive',
      );
    }
  }

  final GiantToadStore store;
  final int currentSchemaVersion;
  final Map<int, GiantToadSaveMigration> migrations;
  final String keyPrefix;

  String _key(String slot) {
    if (!RegExp(r'^[a-zA-Z0-9_-]+$').hasMatch(slot)) {
      throw ArgumentError.value(
        slot,
        'slot',
        'must contain only letters, numbers, _ or -',
      );
    }
    return '$keyPrefix$slot';
  }

  /// Writes through a pending key and retains the previous valid payload as a
  /// backup. Stores with atomic writes still benefit from corruption recovery;
  /// simpler stores cannot leave the only copy half-updated.
  Future<void> save(String slot, Map<String, Object?> values) async {
    final key = _key(slot);
    final payload = GiantToadSaveData(
      schemaVersion: currentSchemaVersion,
      values: Map.unmodifiable(values),
    ).toJson();
    final previous = await store.read(key);
    await store.write('$key.pending', payload);
    if (previous != null) await store.write('$key.backup', previous);
    await store.write(key, payload);
    await store.remove('$key.pending');
  }

  /// Loads the primary payload, then an interrupted pending write, then backup.
  /// A recovered payload is promoted to primary and the damaged value is kept
  /// under `.corrupt` for diagnostics.
  Future<GiantToadSaveData?> load(String slot) async {
    final key = _key(slot);
    Object? firstFailure;
    for (final candidate in [key, '$key.pending', '$key.backup']) {
      final raw = await store.read(candidate);
      if (raw == null) continue;
      try {
        final data = _decodeAndMigrate(raw);
        if (candidate != key) {
          final damaged = await store.read(key);
          if (damaged != null) await store.write('$key.corrupt', damaged);
          await store.write(key, data.toJson());
          await store.remove('$key.pending');
        }
        return data;
      } on FormatException catch (error) {
        firstFailure ??= error;
      } on StateError catch (error) {
        firstFailure ??= error;
      }
    }
    if (firstFailure != null) throw firstFailure;
    return null;
  }

  GiantToadSaveData _decodeAndMigrate(Object? raw) {
    if (raw is! Map) {
      throw const FormatException('Save slot must contain an object.');
    }
    var data = GiantToadSaveData.fromJson(Map<String, Object?>.from(raw));
    if (data.schemaVersion > currentSchemaVersion) {
      throw FormatException(
        'Save schema ${data.schemaVersion} is newer than $currentSchemaVersion.',
      );
    }
    while (data.schemaVersion < currentSchemaVersion) {
      final migration = migrations[data.schemaVersion];
      if (migration == null) {
        throw StateError(
          'Missing save migration from schema ${data.schemaVersion}.',
        );
      }
      final next = migration(data);
      if (next.schemaVersion != data.schemaVersion + 1) {
        throw StateError(
          'Save migrations must advance exactly one schema version.',
        );
      }
      data = next;
    }
    return data;
  }

  Future<void> delete(String slot) async {
    final key = _key(slot);
    await store.remove(key);
    await store.remove('$key.pending');
    await store.remove('$key.backup');
    await store.remove('$key.corrupt');
  }

  Future<List<String>> list() async {
    final slots = <String>[
      for (final key in await store.keys())
        if (key.startsWith(keyPrefix) &&
            !key.endsWith('.pending') &&
            !key.endsWith('.backup') &&
            !key.endsWith('.corrupt'))
          key.substring(keyPrefix.length),
    ]..sort();
    return slots;
  }
}

/// Coalesces frequent save requests and exposes an explicit lifecycle flush.
///
/// Call [markDirty] after meaningful state changes, [update] from the game
/// loop, and await [flush] when the application pauses or a route is disposed.
class GiantToadAutosaveCoordinator {
  GiantToadAutosaveCoordinator({
    required this.write,
    this.delay = const Duration(seconds: 2),
  });

  final Future<void> Function() write;
  final Duration delay;
  Duration _elapsed = Duration.zero;
  bool _dirty = false;
  Future<void>? _active;

  bool get isDirty => _dirty;
  bool get isSaving => _active != null;

  void markDirty() {
    _dirty = true;
    _elapsed = Duration.zero;
  }

  void update(Duration elapsed) {
    if (!_dirty || _active != null) return;
    _elapsed += elapsed;
    if (_elapsed >= delay) unawaited(flush());
  }

  Future<void> flush() async {
    final active = _active;
    if (active != null) return active;
    if (!_dirty) return;
    _dirty = false;
    _elapsed = Duration.zero;
    final operation = write();
    _active = operation;
    try {
      await operation;
    } catch (_) {
      _dirty = true;
      rethrow;
    } finally {
      _active = null;
    }
  }
}

/// Typed settings facade over the same platform store.
class GiantToadSettings {
  GiantToadSettings(this.store, {this.keyPrefix = 'setting.'});

  final GiantToadStore store;
  final String keyPrefix;

  Future<T> get<T>(String key, T fallback) async {
    final value = await store.read('$keyPrefix$key');
    return value is T ? value : fallback;
  }

  Future<void> set(String key, Object? value) =>
      store.write('$keyPrefix$key', value);
  Future<void> remove(String key) => store.remove('$keyPrefix$key');
}
