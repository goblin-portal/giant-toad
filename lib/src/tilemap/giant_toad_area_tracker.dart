import 'giant_toad_area_document.dart';

/// Enter/exit delta produced by [GiantToadAreaTracker].
class GiantToadAreaChange {
  const GiantToadAreaChange({required this.entered, required this.exited});
  final List<GiantToadMapArea> entered;
  final List<GiantToadMapArea> exited;
}

/// Tracks authored areas occupied by one cell-space subject.
class GiantToadAreaTracker {
  GiantToadAreaTracker(this.document);

  final GiantToadAreaDocument document;
  Set<String> _active = const {};

  Set<String> get activeIds => Set.unmodifiable(_active);

  GiantToadAreaChange update(int cellX, int cellY) {
    final now = {
      for (final area in document.areas)
        if (area.containsCell(cellX, cellY)) area.id,
    };
    final enteredIds = now.difference(_active);
    final exitedIds = _active.difference(now);
    _active = now;
    return GiantToadAreaChange(
      entered: [
        for (final area in document.areas)
          if (enteredIds.contains(area.id)) area,
      ],
      exited: [
        for (final area in document.areas)
          if (exitedIds.contains(area.id)) area,
      ],
    );
  }

  void clear() => _active = const {};
}
