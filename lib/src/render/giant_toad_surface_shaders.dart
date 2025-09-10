import 'dart:ui';

/// Reusable Giant Toad runtime shader for animated lava tile surfaces.
class GiantToadLavaSurfaceShader {
  GiantToadLavaSurfaceShader._(this.program);

  static const asset = 'packages/giant_toad/shaders/lava_surface.frag';
  static const packageAsset = 'shaders/lava_surface.frag';

  final FragmentProgram program;

  static Future<GiantToadLavaSurfaceShader> load() async {
    try {
      return GiantToadLavaSurfaceShader._(
        await FragmentProgram.fromAsset(asset),
      );
    } on Exception {
      // A package's own test bundle exposes its shader without the packages/
      // prefix; consuming applications use [asset].
      return GiantToadLavaSurfaceShader._(
        await FragmentProgram.fromAsset(packageAsset),
      );
    }
  }

  FragmentShader create({
    required Size size,
    required double time,
    double intensity = 1,
    double speed = 1,
    Color color = const Color(0xffff5c14),
  }) {
    final shader = program.fragmentShader();
    shader
      ..setFloat(0, size.width)
      ..setFloat(1, size.height)
      ..setFloat(2, time)
      ..setFloat(3, intensity.clamp(0, 2))
      ..setFloat(4, speed.clamp(0, 8))
      ..setFloat(5, color.r)
      ..setFloat(6, color.g)
      ..setFloat(7, color.b);
    return shader;
  }

  void draw(
    Canvas canvas,
    Rect bounds, {
    required double time,
    double intensity = 1,
    double speed = 1,
    Color color = const Color(0xffff5c14),
    BlendMode blendMode = BlendMode.srcOver,
  }) {
    if (bounds.isEmpty) return;
    canvas.save();
    canvas.translate(bounds.left, bounds.top);
    canvas.drawRect(
      Offset.zero & bounds.size,
      Paint()
        ..blendMode = blendMode
        ..shader = create(
          size: bounds.size,
          time: time,
          intensity: intensity,
          speed: speed,
          color: color,
        ),
    );
    canvas.restore();
  }
}

class GiantToadWaterSurfaceShader {
  GiantToadWaterSurfaceShader._(this.program);
  static const asset = 'packages/giant_toad/shaders/water_surface.frag';
  static const packageAsset = 'shaders/water_surface.frag';
  final FragmentProgram program;

  static Future<GiantToadWaterSurfaceShader> load() async {
    try {
      return GiantToadWaterSurfaceShader._(
        await FragmentProgram.fromAsset(asset),
      );
    } on Exception {
      return GiantToadWaterSurfaceShader._(
        await FragmentProgram.fromAsset(packageAsset),
      );
    }
  }

  void draw(
    Canvas canvas,
    Rect bounds, {
    required double time,
    required int cellX,
    required int cellY,
    double intensity = 1,
    double speed = 1,
    double strength = .55,
    double directionX = 1,
    double directionY = 0,
    Color color = const Color(0xff96e1ff),
  }) {
    if (bounds.isEmpty) return;
    final shader = program.fragmentShader()
      ..setFloat(0, bounds.width)
      ..setFloat(1, bounds.height)
      ..setFloat(2, time)
      ..setFloat(3, intensity.clamp(0, 2))
      ..setFloat(4, speed.clamp(0, 8))
      ..setFloat(5, strength.clamp(0, 2))
      ..setFloat(6, color.r)
      ..setFloat(7, color.g)
      ..setFloat(8, color.b)
      ..setFloat(9, cellX.toDouble())
      ..setFloat(10, cellY.toDouble())
      ..setFloat(11, directionX)
      ..setFloat(12, directionY);
    canvas.save();
    canvas.translate(bounds.left, bounds.top);
    canvas.drawRect(Offset.zero & bounds.size, Paint()..shader = shader);
    canvas.restore();
  }
}

class GiantToadShorelineFoamShader {
  GiantToadShorelineFoamShader._(this.program);
  static const asset = 'packages/giant_toad/shaders/shoreline_foam.frag';
  static const packageAsset = 'shaders/shoreline_foam.frag';
  final FragmentProgram program;

  static Future<GiantToadShorelineFoamShader> load() async {
    try {
      return GiantToadShorelineFoamShader._(
        await FragmentProgram.fromAsset(asset),
      );
    } on Exception {
      return GiantToadShorelineFoamShader._(
        await FragmentProgram.fromAsset(packageAsset),
      );
    }
  }

  void draw(
    Canvas canvas,
    Rect bounds, {
    required double time,
    required int edgeMask,
    required int cellX,
    required int cellY,
    double speed = 1,
    double width = .08,
    double opacity = .6,
    Color color = const Color(0xffd8f5ff),
  }) {
    if (bounds.isEmpty || edgeMask == 0) return;
    final shader = program.fragmentShader()
      ..setFloat(0, bounds.width)
      ..setFloat(1, bounds.height)
      ..setFloat(2, time)
      ..setFloat(3, speed.clamp(0, 8))
      ..setFloat(4, width.clamp(.015, .48))
      ..setFloat(5, opacity.clamp(0, 1))
      ..setFloat(6, color.r)
      ..setFloat(7, color.g)
      ..setFloat(8, color.b)
      ..setFloat(9, edgeMask.toDouble())
      ..setFloat(10, cellX.toDouble())
      ..setFloat(11, cellY.toDouble());
    canvas.save();
    canvas.translate(bounds.left, bounds.top);
    canvas.drawRect(Offset.zero & bounds.size, Paint()..shader = shader);
    canvas.restore();
  }
}

class GiantToadCloudShadowShader {
  GiantToadCloudShadowShader._(this.program);
  static const asset = 'packages/giant_toad/shaders/cloud_shadows.frag';
  static const packageAsset = 'shaders/cloud_shadows.frag';
  final FragmentProgram program;

  static Future<GiantToadCloudShadowShader> load() async {
    try {
      return GiantToadCloudShadowShader._(
        await FragmentProgram.fromAsset(asset),
      );
    } on Exception {
      return GiantToadCloudShadowShader._(
        await FragmentProgram.fromAsset(packageAsset),
      );
    }
  }

  void draw(
    Canvas canvas,
    Rect bounds, {
    required double time,
    required Offset cameraOffset,
    required double zoom,
    double density = .66,
    double opacity = .11,
    Offset drift = const Offset(.25, .1),
    Color color = const Color(0xff0e141c),
  }) {
    if (bounds.isEmpty) return;
    final shader = program.fragmentShader()
      ..setFloat(0, bounds.width)
      ..setFloat(1, bounds.height)
      ..setFloat(2, time)
      ..setFloat(3, cameraOffset.dx - bounds.left)
      ..setFloat(4, cameraOffset.dy - bounds.top)
      ..setFloat(5, zoom.clamp(.01, 128))
      ..setFloat(6, density.clamp(0, 1))
      ..setFloat(7, opacity.clamp(0, .35))
      ..setFloat(8, drift.dx)
      ..setFloat(9, drift.dy)
      ..setFloat(10, color.r)
      ..setFloat(11, color.g)
      ..setFloat(12, color.b);
    canvas.save();
    canvas.translate(bounds.left, bounds.top);
    canvas.drawRect(Offset.zero & bounds.size, Paint()..shader = shader);
    canvas.restore();
  }
}
