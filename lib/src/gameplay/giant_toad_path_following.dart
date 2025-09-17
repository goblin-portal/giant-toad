import 'package:flame/components.dart';

import '../tilemap/giant_toad_map_document.dart';
import '../world/giant_toad_tile_collision.dart';
import 'giant_toad_pathfinding.dart';

enum GiantToadPathCompletion { moving, arrived, blocked, cancelled }

abstract final class GiantToadPathAdapters {
  static bool Function(GiantToadCell) blockedByTiles(
    GiantToadTileCollision collision,
  ) =>
      (cell) => collision.solidAt(cell.x, cell.y);

  static List<Vector2> cellCenters(
    Iterable<GiantToadCell> cells, {
    required double tileSize,
  }) => [
    for (final cell in cells)
      Vector2((cell.x + 0.5) * tileSize, (cell.y + 0.5) * tileSize),
  ];

  static GiantToadCell worldToCell(Vector2 point, GiantToadMapDocument map) =>
      GiantToadCell(
        (point.x / map.tileSize).floor(),
        (point.y / map.tileSize).floor(),
      );
}

class GiantToadPathFollower {
  GiantToadPathFollower({this.arrivalTolerance = 0.25});
  final double arrivalTolerance;
  List<Vector2> _waypoints = const [];
  int _index = 0;
  GiantToadPathCompletion status = GiantToadPathCompletion.arrived;

  Vector2? get target =>
      status == GiantToadPathCompletion.moving ? _waypoints[_index] : null;
  int get remaining =>
      status == GiantToadPathCompletion.moving ? _waypoints.length - _index : 0;

  void follow(Iterable<Vector2> waypoints) {
    _waypoints = [for (final point in waypoints) point.clone()];
    _index = 0;
    status = _waypoints.isEmpty
        ? GiantToadPathCompletion.arrived
        : GiantToadPathCompletion.moving;
  }

  Vector2 velocity(Vector2 position, double speed) {
    if (status != GiantToadPathCompletion.moving) return Vector2.zero();
    while (_index < _waypoints.length &&
        position.distanceTo(_waypoints[_index]) <= arrivalTolerance) {
      _index++;
    }
    if (_index >= _waypoints.length) {
      status = GiantToadPathCompletion.arrived;
      return Vector2.zero();
    }
    final delta = _waypoints[_index] - position;
    return delta.normalized() * speed;
  }

  void blocked() {
    if (status == GiantToadPathCompletion.moving) {
      status = GiantToadPathCompletion.blocked;
    }
  }

  void cancel() {
    if (status == GiantToadPathCompletion.moving) {
      status = GiantToadPathCompletion.cancelled;
    }
  }
}
