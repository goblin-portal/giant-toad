class GiantToadTypewriterLine {
  const GiantToadTypewriterLine({required this.text, this.speaker});
  final String text;
  final String? speaker;
}

class GiantToadValueChoice<T> {
  const GiantToadValueChoice({required this.text, required this.value});
  final String text;
  final T value;
}

/// Deterministic typewriter/choice presentation state shared by keyboard,
/// controller, pointer, and Flutter overlay renderers.
class GiantToadTypewriterDialogue<T> {
  GiantToadTypewriterDialogue({this.charactersPerSecond = 35}) {
    if (charactersPerSecond <= 0 || !charactersPerSecond.isFinite) {
      throw ArgumentError.value(charactersPerSecond, 'charactersPerSecond');
    }
  }

  final double charactersPerSecond;
  List<GiantToadTypewriterLine> _lines = const [];
  List<GiantToadValueChoice<T>> _choices = const [];
  int _line = 0;
  double _characters = 0;
  int selectedChoice = 0;
  T? chosenValue;

  bool get active => _line < _lines.length || _choices.isNotEmpty;
  bool get showingChoices => _line >= _lines.length && _choices.isNotEmpty;
  GiantToadTypewriterLine? get currentLine =>
      _line < _lines.length ? _lines[_line] : null;
  List<GiantToadValueChoice<T>> get choices => _choices;
  bool get lineComplete =>
      currentLine == null || _characters.floor() >= currentLine!.text.length;
  String get visibleText {
    final line = currentLine;
    if (line == null) return '';
    return line.text.substring(
      0,
      _characters.floor().clamp(0, line.text.length),
    );
  }

  void start(
    Iterable<GiantToadTypewriterLine> lines, {
    Iterable<GiantToadValueChoice<T>> choices = const [],
  }) {
    _lines = List.unmodifiable(lines);
    _choices = List.unmodifiable(choices);
    if (_lines.isEmpty && _choices.isEmpty) {
      throw ArgumentError('Dialogue requires lines or choices.');
    }
    _line = 0;
    _characters = 0;
    selectedChoice = 0;
    chosenValue = null;
  }

  void update(double dt) {
    if (dt < 0 || !dt.isFinite) throw ArgumentError.value(dt, 'dt');
    final line = currentLine;
    if (line != null) {
      _characters = (_characters + dt * charactersPerSecond).clamp(
        0,
        line.text.length.toDouble(),
      );
    }
  }

  /// Completes the current line, advances to the next line, or closes dialogue.
  bool advance() {
    final line = currentLine;
    if (line == null) return false;
    if (!lineComplete) {
      _characters = line.text.length.toDouble();
      return true;
    }
    _line++;
    _characters = 0;
    return true;
  }

  void moveChoice(int delta) {
    if (!showingChoices || _choices.isEmpty) return;
    selectedChoice = (selectedChoice + delta) % _choices.length;
    if (selectedChoice < 0) selectedChoice += _choices.length;
  }

  T choose([int? index]) {
    if (!showingChoices) throw StateError('Dialogue choices are not active.');
    final selected = index ?? selectedChoice;
    if (selected < 0 || selected >= _choices.length) {
      throw RangeError.index(selected, _choices);
    }
    final value = _choices[selected].value;
    chosenValue = value;
    _choices = const [];
    return value;
  }
}

class GiantToadDialogueChoice {
  const GiantToadDialogueChoice({
    required this.label,
    required this.next,
    this.enabled,
    this.onSelect,
  });
  final String label;
  final String? next;
  final bool Function()? enabled;
  final void Function()? onSelect;

  bool get isEnabled => enabled?.call() ?? true;
}

class GiantToadDialogueNode {
  const GiantToadDialogueNode({
    required this.id,
    required this.text,
    this.speaker,
    this.next,
    this.choices = const [],
    this.onEnter,
  });
  final String id;
  final String text;
  final String? speaker;
  final String? next;
  final List<GiantToadDialogueChoice> choices;
  final void Function()? onEnter;
}

/// Deterministic dialogue graph state independent of its Flutter presentation.
class GiantToadDialogue {
  GiantToadDialogue({required Iterable<GiantToadDialogueNode> nodes})
    : _nodes = {for (final node in nodes) node.id: node} {
    if (_nodes.isEmpty) {
      throw ArgumentError('Dialogue requires at least one node.');
    }
    if (_nodes.length != nodes.length) {
      throw ArgumentError('Dialogue node ids must be unique.');
    }
    for (final node in _nodes.values) {
      _validateTarget(node.next);
      for (final choice in node.choices) {
        _validateTarget(choice.next);
      }
    }
  }

  final Map<String, GiantToadDialogueNode> _nodes;
  GiantToadDialogueNode? _current;

  GiantToadDialogueNode? get current => _current;
  bool get active => _current != null;
  List<GiantToadDialogueChoice> get choices =>
      _current?.choices
          .where((choice) => choice.isEnabled)
          .toList(growable: false) ??
      const [];

  void start(String id) => _enter(id);

  bool advance() {
    final node = _current;
    if (node == null || node.choices.isNotEmpty) return false;
    if (node.next == null) {
      _current = null;
      return true;
    }
    _enter(node.next!);
    return true;
  }

  void choose(int index) {
    final available = choices;
    if (index < 0 || index >= available.length) {
      throw RangeError.index(index, available);
    }
    final choice = available[index];
    choice.onSelect?.call();
    if (choice.next == null) {
      _current = null;
    } else {
      _enter(choice.next!);
    }
  }

  String? snapshot() => _current?.id;
  void restore(String? nodeId) {
    if (nodeId == null) {
      _current = null;
    } else {
      _enter(nodeId);
    }
  }

  void _enter(String id) {
    _current = _nodes[id] ?? (throw StateError('Unknown dialogue node "$id".'));
    _current!.onEnter?.call();
  }

  void _validateTarget(String? id) {
    if (id != null && !_nodes.containsKey(id)) {
      throw ArgumentError('Unknown dialogue target "$id".');
    }
  }
}
