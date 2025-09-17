import 'package:flame/components.dart';

enum GiantToadTaskStatus { running, succeeded, failed, cancelled }

abstract class GiantToadTask<C> {
  GiantToadTaskStatus tick(double dt, C context);
  void reset();
  void cancel() {}
}

class GiantToadActionTask<C> extends GiantToadTask<C> {
  GiantToadActionTask(this.action);
  final GiantToadTaskStatus Function(double dt, C context) action;

  @override
  GiantToadTaskStatus tick(double dt, C context) => action(dt, context);

  @override
  void reset() {}
}

class GiantToadWaitTask<C> extends GiantToadTask<C> {
  GiantToadWaitTask(this.duration)
    : assert(!duration.isNegative),
      _remaining = duration.inMicroseconds / Duration.microsecondsPerSecond;

  final Duration duration;
  double _remaining;

  @override
  GiantToadTaskStatus tick(double dt, C context) {
    _remaining -= dt;
    return _remaining <= 0
        ? GiantToadTaskStatus.succeeded
        : GiantToadTaskStatus.running;
  }

  @override
  void reset() {
    _remaining = duration.inMicroseconds / Duration.microsecondsPerSecond;
  }
}

class GiantToadConditionTask<C> extends GiantToadTask<C> {
  GiantToadConditionTask(this.condition);
  final bool Function(C context) condition;

  @override
  GiantToadTaskStatus tick(double dt, C context) => condition(context)
      ? GiantToadTaskStatus.succeeded
      : GiantToadTaskStatus.failed;

  @override
  void reset() {}
}

abstract class _GiantToadCompositeTask<C> extends GiantToadTask<C> {
  _GiantToadCompositeTask(Iterable<GiantToadTask<C>> children)
    : children = List.unmodifiable(children);

  final List<GiantToadTask<C>> children;
  int index = 0;

  @override
  void reset() {
    index = 0;
    for (final child in children) {
      child.reset();
    }
  }

  @override
  void cancel() {
    if (index < children.length) children[index].cancel();
  }
}

class GiantToadSequenceTask<C> extends _GiantToadCompositeTask<C> {
  GiantToadSequenceTask(super.children);

  @override
  GiantToadTaskStatus tick(double dt, C context) {
    while (index < children.length) {
      final status = children[index].tick(dt, context);
      if (status == GiantToadTaskStatus.running) return status;
      if (status != GiantToadTaskStatus.succeeded) return status;
      index++;
    }
    return GiantToadTaskStatus.succeeded;
  }
}

class GiantToadSelectorTask<C> extends _GiantToadCompositeTask<C> {
  GiantToadSelectorTask(super.children);

  @override
  GiantToadTaskStatus tick(double dt, C context) {
    while (index < children.length) {
      final status = children[index].tick(dt, context);
      if (status == GiantToadTaskStatus.running) return status;
      if (status == GiantToadTaskStatus.succeeded) return status;
      index++;
    }
    return GiantToadTaskStatus.failed;
  }
}

class GiantToadRepeatTask<C> extends GiantToadTask<C> {
  GiantToadRepeatTask(this.child, {this.count});
  final GiantToadTask<C> child;
  final int? count;
  int _completed = 0;

  @override
  GiantToadTaskStatus tick(double dt, C context) {
    if (count != null && _completed >= count!) {
      return GiantToadTaskStatus.succeeded;
    }
    final status = child.tick(dt, context);
    if (status == GiantToadTaskStatus.succeeded) {
      _completed++;
      child.reset();
      return count != null && _completed >= count!
          ? GiantToadTaskStatus.succeeded
          : GiantToadTaskStatus.running;
    }
    return status;
  }

  @override
  void reset() {
    _completed = 0;
    child.reset();
  }

  @override
  void cancel() => child.cancel();
}

class GiantToadTaskComponent<C> extends Component {
  GiantToadTaskComponent({required this.task, required this.context});
  final GiantToadTask<C> task;
  final C context;
  GiantToadTaskStatus status = GiantToadTaskStatus.running;

  @override
  void update(double dt) {
    if (status == GiantToadTaskStatus.running) status = task.tick(dt, context);
  }

  void restart() {
    task.reset();
    status = GiantToadTaskStatus.running;
  }

  void cancel() {
    if (status != GiantToadTaskStatus.running) return;
    task.cancel();
    status = GiantToadTaskStatus.cancelled;
  }
}
