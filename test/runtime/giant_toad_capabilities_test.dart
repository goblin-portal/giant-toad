import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('web capabilities explain gesture, isolate, and filesystem limits', () {
    const capabilities = GiantToadCapabilities(GiantToadPlatformKind.web);
    expect(
      capabilities.supports(GiantToadCapability.persistentStorage),
      isTrue,
    );
    expect(
      capabilities.supports(GiantToadCapability.audioWithoutGesture),
      isFalse,
    );
    expect(
      capabilities.status(GiantToadCapability.audioWithoutGesture).reason,
      contains('gesture'),
    );
    expect(
      () => capabilities.require(GiantToadCapability.projectFileSystem),
      throwsUnsupportedError,
    );
  });

  test('desktop and mobile advertise distinct touch/file contracts', () {
    const desktop = GiantToadCapabilities(GiantToadPlatformKind.desktop);
    const mobile = GiantToadCapabilities(GiantToadPlatformKind.mobile);
    expect(desktop.supports(GiantToadCapability.projectFileSystem), isTrue);
    expect(desktop.supports(GiantToadCapability.touch), isFalse);
    expect(mobile.supports(GiantToadCapability.touch), isTrue);
    expect(mobile.supports(GiantToadCapability.backgroundIsolates), isTrue);
  });
}
