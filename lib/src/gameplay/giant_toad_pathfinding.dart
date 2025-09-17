/// An immutable integer cell coordinate.
class GiantToadCell {
  const GiantToadCell(this.x, this.y);

  final int x;
  final int y;

  @override
  bool operator ==(Object other) =>
      other is GiantToadCell && other.x == x && other.y == y;

  @override
  int get hashCode => Object.hash(x, y);
}

/// Inclusive limits for a finite grid search.
class GiantToadGridBounds {
  const GiantToadGridBounds({
    required this.minX,
    required this.minY,
    required this.maxX,
    required this.maxY,
  }) : assert(minX <= maxX),
       assert(minY <= maxY);

  final int minX;
  final int minY;
  final int maxX;
  final int maxY;

  bool contains(GiantToadCell cell) =>
      cell.x >= minX && cell.x <= maxX && cell.y >= minY && cell.y <= maxY;
}

/// Deterministic four-direction A* over a bounded integer grid.
abstract final class GiantToadPathfinding {
  /// Returns waypoints after [start], including [goal], or an empty list when
  /// no route exists. [isBlocked] must return false for walkable cells.
  static List<GiantToadCell> findGridPath({
    required GiantToadCell start,
    required GiantToadCell goal,
    required GiantToadGridBounds bounds,
    required bool Function(GiantToadCell cell) isBlocked,
    bool diagonal = false,
    int? maxNodes,
  }) {
    if (maxNodes != null && maxNodes <= 0) {
      throw ArgumentError.value(maxNodes, 'maxNodes', 'must be positive');
    }
    if (!bounds.contains(start) || !bounds.contains(goal) || isBlocked(goal)) {
      return const [];
    }
    if (start == goal) return const [];

    final open = _MinHeap();
    final cost = <GiantToadCell, int>{start: 0};
    final parent = <GiantToadCell, GiantToadCell>{};
    open.add(_PathNode(start, 0, _distance(start, goal)));

    var visited = 0;
    while (open.isNotEmpty) {
      final current = open.removeFirst();
      if (++visited > (maxNodes ?? 0x7fffffff)) return const [];
      if (current.cost != cost[current.cell]) continue;
      if (current.cell == goal) return _reconstruct(parent, start, goal);
      for (final next in _neighbours(current.cell, diagonal: diagonal)) {
        if (!bounds.contains(next) || isBlocked(next)) continue;
        final nextCost = current.cost + 1;
        if (nextCost >= (cost[next] ?? 0x7fffffff)) continue;
        cost[next] = nextCost;
        parent[next] = current.cell;
        open.add(_PathNode(next, nextCost, nextCost + _distance(next, goal)));
      }
    }
    return const [];
  }

  static int _distance(GiantToadCell a, GiantToadCell b) =>
      (a.x - b.x).abs() + (a.y - b.y).abs();

  static Iterable<GiantToadCell> _neighbours(
    GiantToadCell cell, {
    required bool diagonal,
  }) sync* {
    yield GiantToadCell(cell.x, cell.y - 1);
    yield GiantToadCell(cell.x + 1, cell.y);
    yield GiantToadCell(cell.x, cell.y + 1);
    yield GiantToadCell(cell.x - 1, cell.y);
    if (diagonal) {
      yield GiantToadCell(cell.x + 1, cell.y - 1);
      yield GiantToadCell(cell.x + 1, cell.y + 1);
      yield GiantToadCell(cell.x - 1, cell.y + 1);
      yield GiantToadCell(cell.x - 1, cell.y - 1);
    }
  }

  static List<GiantToadCell> _reconstruct(
    Map<GiantToadCell, GiantToadCell> parent,
    GiantToadCell start,
    GiantToadCell goal,
  ) {
    final path = <GiantToadCell>[goal];
    var current = goal;
    while (current != start) {
      current = parent[current]!;
      if (current != start) path.add(current);
    }
    return path.reversed.toList(growable: false);
  }
}

class _PathNode {
  const _PathNode(this.cell, this.cost, this.priority);
  final GiantToadCell cell;
  final int cost;
  final int priority;
}

class _MinHeap {
  final _nodes = <_PathNode>[];
  bool get isNotEmpty => _nodes.isNotEmpty;

  void add(_PathNode node) {
    _nodes.add(node);
    var index = _nodes.length - 1;
    while (index > 0) {
      final parent = (index - 1) ~/ 2;
      if (_compare(_nodes[parent], node) <= 0) break;
      _nodes[index] = _nodes[parent];
      index = parent;
    }
    _nodes[index] = node;
  }

  _PathNode removeFirst() {
    final result = _nodes.first;
    final last = _nodes.removeLast();
    if (_nodes.isEmpty) return result;
    var index = 0;
    while (true) {
      final left = index * 2 + 1;
      if (left >= _nodes.length) break;
      final right = left + 1;
      final child =
          right < _nodes.length && _compare(_nodes[right], _nodes[left]) < 0
          ? right
          : left;
      if (_compare(last, _nodes[child]) <= 0) break;
      _nodes[index] = _nodes[child];
      index = child;
    }
    _nodes[index] = last;
    return result;
  }

  int _compare(_PathNode left, _PathNode right) {
    final priority = left.priority.compareTo(right.priority);
    if (priority != 0) return priority;
    final y = left.cell.y.compareTo(right.cell.y);
    return y != 0 ? y : left.cell.x.compareTo(right.cell.x);
  }
}
