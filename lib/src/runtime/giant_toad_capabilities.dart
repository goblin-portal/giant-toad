import 'package:flutter/foundation.dart';

/// Runtime families that materially affect game feature availability.
enum GiantToadPlatformKind { web, desktop, mobile }

enum GiantToadCapability {
  persistentStorage,
  projectFileSystem,
  backgroundIsolates,
  shaders,
  audioWithoutGesture,
  pointer,
  touch,
  gamepads,
}

class GiantToadCapabilityStatus {
  const GiantToadCapabilityStatus.supported() : supported = true, reason = null;
  const GiantToadCapabilityStatus.unsupported(this.reason) : supported = false;

  final bool supported;
  final String? reason;
}

/// Explicit platform contract used by examples and production fallback paths.
class GiantToadCapabilities {
  const GiantToadCapabilities(this.kind);

  factory GiantToadCapabilities.current() {
    if (kIsWeb) return const GiantToadCapabilities(GiantToadPlatformKind.web);
    return GiantToadCapabilities(switch (defaultTargetPlatform) {
      TargetPlatform.android ||
      TargetPlatform.iOS => GiantToadPlatformKind.mobile,
      _ => GiantToadPlatformKind.desktop,
    });
  }

  final GiantToadPlatformKind kind;

  GiantToadCapabilityStatus status(GiantToadCapability capability) => switch ((
    kind,
    capability,
  )) {
    (_, GiantToadCapability.persistentStorage) =>
      const GiantToadCapabilityStatus.supported(),
    (GiantToadPlatformKind.web, GiantToadCapability.projectFileSystem) =>
      const GiantToadCapabilityStatus.unsupported(
        'Browser games cannot access arbitrary project files.',
      ),
    (_, GiantToadCapability.projectFileSystem) =>
      const GiantToadCapabilityStatus.supported(),
    (GiantToadPlatformKind.web, GiantToadCapability.backgroundIsolates) =>
      const GiantToadCapabilityStatus.unsupported(
        'Use a web-worker adapter; Isolate.run is not a portable browser contract.',
      ),
    (_, GiantToadCapability.backgroundIsolates) =>
      const GiantToadCapabilityStatus.supported(),
    (_, GiantToadCapability.shaders) =>
      const GiantToadCapabilityStatus.supported(),
    (GiantToadPlatformKind.web, GiantToadCapability.audioWithoutGesture) =>
      const GiantToadCapabilityStatus.unsupported(
        'Browser audio requires a user activation gesture.',
      ),
    (_, GiantToadCapability.audioWithoutGesture) =>
      const GiantToadCapabilityStatus.supported(),
    (_, GiantToadCapability.pointer) =>
      const GiantToadCapabilityStatus.supported(),
    (GiantToadPlatformKind.desktop, GiantToadCapability.touch) =>
      const GiantToadCapabilityStatus.unsupported(
        'No touch device is assumed on desktop.',
      ),
    (_, GiantToadCapability.touch) =>
      const GiantToadCapabilityStatus.supported(),
    (_, GiantToadCapability.gamepads) =>
      const GiantToadCapabilityStatus.supported(),
  };

  bool supports(GiantToadCapability capability) => status(capability).supported;

  void require(GiantToadCapability capability) {
    final result = status(capability);
    if (!result.supported) {
      throw UnsupportedError(result.reason ?? 'Capability is unavailable.');
    }
  }
}
