import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

/// Resources tied to a scene route and released when Flame unmounts it.
class GiantToadSceneResources {
  final List<FutureOr<void> Function()> _disposers = [];
  bool _disposed = false;

  bool get disposed => _disposed;

  T own<T>(T resource, FutureOr<void> Function(T resource) dispose) {
    if (_disposed) {
      throw StateError('Cannot own resources after scene disposal.');
    }
    _disposers.add(() => dispose(resource));
    return resource;
  }

  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;
    for (final disposer in _disposers.reversed) {
      await disposer();
    }
    _disposers.clear();
  }
}

/// Flame [Route] with explicit typed scene activation and resource lifecycle.
class GiantToadSceneRoute extends Route {
  GiantToadSceneRoute({
    required Component Function() builder,
    this.onActivated,
    this.onDeactivated,
    bool transparent = false,
    bool maintainState = true,
  }) : resources = GiantToadSceneResources(),
       super(builder, transparent: transparent, maintainState: maintainState);

  final GiantToadSceneResources resources;
  final void Function(String? previous)? onActivated;
  final void Function(String next)? onDeactivated;

  @override
  void onPush(Route? previousRoute) {
    onActivated?.call(previousRoute?.name);
  }

  @override
  void onPop(Route nextRoute) {
    onDeactivated?.call(nextRoute.name ?? '');
  }

  @override
  void onRemove() {
    unawaited(resources.dispose());
    super.onRemove();
  }
}

/// Small naming convenience over Flame's standard [RouterComponent].
class GiantToadSceneRouter extends RouterComponent {
  GiantToadSceneRouter({
    required super.initialRoute,
    required Map<String, GiantToadSceneRoute> scenes,
  }) : super(routes: scenes);

  String get currentName => currentRoute.name!;

  void go(String name, {bool replace = false}) =>
      pushNamed(name, replace: replace);

  bool back() {
    if (!canPop()) return false;
    pop();
    return true;
  }
}
