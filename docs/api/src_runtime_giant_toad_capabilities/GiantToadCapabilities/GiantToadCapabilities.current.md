<div>

<div>

# <span class="kind-constructor">GiantToadCapabilities.current</span> constructor

</div>

<div>

<span class="name">GiantToadCapabilities.current</span>()

</div>

<div>

## Implementation

``` dart
factory GiantToadCapabilities.current() {
  if (kIsWeb) return const GiantToadCapabilities(GiantToadPlatformKind.web);
  return GiantToadCapabilities(switch (defaultTargetPlatform) {
    TargetPlatform.android ||
    TargetPlatform.iOS => GiantToadPlatformKind.mobile,
    _ => GiantToadPlatformKind.desktop,
  });
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad_capabilities](../../src_runtime_giant_toad_capabilities/index.md)
3.  [GiantToadCapabilities](../../src_runtime_giant_toad_capabilities/GiantToadCapabilities-class.md)
4.  GiantToadCapabilities.current factory constructor

##### GiantToadCapabilities class

<div>

</div>

</div>

<div>

</div>
