import 'dart:convert';

/// A semantic input action, independent of keyboard, touch, or controller APIs.
class GiantToadAction {
  const GiantToadAction(this.id) : assert(id != '');
  final String id;

  @override
  bool operator ==(Object other) => other is GiantToadAction && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// Maps physical control identifiers to semantic game actions.
class GiantToadActionMap {
  GiantToadActionMap(Map<GiantToadAction, Iterable<String>> bindings)
    : _bindings = {
        for (final entry in bindings.entries)
          entry.key: Set.unmodifiable(entry.value),
      };

  /// Decodes persisted bindings keyed by action identifier.
  factory GiantToadActionMap.fromJson(Map<String, Object?> json) {
    final bindings = <GiantToadAction, Iterable<String>>{};
    for (final entry in json.entries) {
      if (entry.value is! List ||
          (entry.value as List).any((control) => control is! String)) {
        throw FormatException(
          'Action "${entry.key}" must map to a string array.',
        );
      }
      bindings[GiantToadAction(entry.key)] = List<String>.from(
        entry.value as List,
      );
    }
    return GiantToadActionMap(bindings);
  }

  final Map<GiantToadAction, Set<String>> _bindings;

  /// Returns actions activated by [control], such as `keyW` or `gamepadSouth`.
  Iterable<GiantToadAction> actionsFor(String control) => _bindings.entries
      .where((entry) => entry.value.contains(control))
      .map((entry) => entry.key);

  bool isBound(GiantToadAction action, String control) =>
      _bindings[action]?.contains(control) ?? false;

  Iterable<String> controlsFor(GiantToadAction action) =>
      _bindings[action] ?? const <String>{};

  /// Produces stable JSON-compatible bindings keyed by action identifier.
  Map<String, Object?> toJson() => {
    for (final entry in _bindings.entries)
      entry.key.id: entry.value.toList()..sort(),
  };
}

/// Stores the currently held physical controls and exposes semantic actions.
class GiantToadActionState {
  GiantToadActionState(this.bindings);

  final GiantToadActionMap bindings;
  final _values = <String, double>{};
  final _justPressed = <GiantToadAction>{};
  final _justReleased = <GiantToadAction>{};

  void press(String control) => setValue(control, 1);
  void release(String control) => setValue(control, 0);

  void setValue(String control, double value) {
    if (!value.isFinite || value < -1 || value > 1) {
      throw ArgumentError.value(value, 'value', 'must be finite and in -1...1');
    }
    final actions = bindings.actionsFor(control).toList(growable: false);
    final before = {for (final action in actions) action: isPressed(action)};
    if (value == 0) {
      _values.remove(control);
    } else {
      _values[control] = value;
    }
    for (final action in actions) {
      final after = isPressed(action);
      if (!before[action]! && after) _justPressed.add(action);
      if (before[action]! && !after) _justReleased.add(action);
    }
  }

  double controlValue(String control) => _values[control] ?? 0;

  double value(GiantToadAction action) {
    var result = 0.0;
    for (final control in bindings.controlsFor(action)) {
      final candidate = controlValue(control);
      if (candidate.abs() > result.abs()) result = candidate;
    }
    return result;
  }

  bool isPressed(GiantToadAction action) => value(action) != 0;
  bool justPressed(GiantToadAction action) => _justPressed.contains(action);
  bool justReleased(GiantToadAction action) => _justReleased.contains(action);

  /// Clears one-frame edges after game systems have consumed them.
  void endFrame() {
    _justPressed.clear();
    _justReleased.clear();
  }

  void clear() {
    final active = <GiantToadAction>{
      for (final control in _values.keys) ...bindings.actionsFor(control),
    };
    _values.clear();
    _justReleased.addAll(active);
  }
}

/// Encodes persisted action bindings without coupling to a storage backend.
abstract final class GiantToadActionMapCodec {
  static GiantToadActionMap decode(String source) {
    final decoded = jsonDecode(source);
    if (decoded is! Map) {
      throw FormatException('Action bindings must be a JSON object.');
    }
    return GiantToadActionMap.fromJson(Map<String, Object?>.from(decoded));
  }

  static String encode(GiantToadActionMap bindings) =>
      jsonEncode(bindings.toJson());
}
