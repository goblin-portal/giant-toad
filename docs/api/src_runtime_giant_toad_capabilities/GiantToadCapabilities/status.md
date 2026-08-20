<div>

<div>

# <span class="kind-method">status</span> method

</div>

<div>

<span class="returntype">[GiantToadCapabilityStatus](../../src_runtime_giant_toad_capabilities/GiantToadCapabilityStatus-class.md)</span> <span class="name">status</span>(

1.  <span id="status-param-capability" class="parameter"><span class="type-annotation">[GiantToadCapability](../../src_runtime_giant_toad_capabilities/GiantToadCapability.md)</span> <span class="parameter-name">capability</span></span>

)

</div>

<div>

## Implementation

``` dart
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
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_capabilities](../../src_runtime_giant_toad_capabilities/index.md)
3.  [GiantToadCapabilities](../../src_runtime_giant_toad_capabilities/GiantToadCapabilities-class.md)
4.  status method

##### GiantToadCapabilities class

<div>

</div>

</div>

<div>

</div>
