<div>

<div>

# <span class="kind-method">require</span> method

</div>

<div>

<span class="returntype">void</span> <span class="name">require</span>(

1.  <span id="require-param-capability" class="parameter"><span class="type-annotation">[GiantToadCapability](../../giant_toad/GiantToadCapability.md)</span> <span class="parameter-name">capability</span></span>

)

</div>

<div>

## Implementation

``` dart
void require(GiantToadCapability capability) {
  final result = status(capability);
  if (!result.supported) {
    throw UnsupportedError(result.reason ?? 'Capability is unavailable.');
  }
}
```

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../../index.md)
2.  [giant_toad](../../giant_toad/index.md)
3.  [GiantToadCapabilities](../../giant_toad/GiantToadCapabilities-class.md)
4.  require method

##### GiantToadCapabilities class

<div>

</div>

</div>

<div>

</div>
