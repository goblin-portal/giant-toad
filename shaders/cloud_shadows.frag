#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform float uTime;
uniform vec2 uCameraOffset;
uniform float uZoom;
uniform float uDensity;
uniform float uOpacity;
uniform vec2 uDrift;
uniform vec3 uColor;

out vec4 fragColor;

float hash(vec2 point, float salt) {
  return fract(sin(dot(point, vec2(127.1, 311.7)) + salt * 74.7) * 43758.5453);
}

void main() {
  const float spacing = 96.0;
  vec2 screen = FlutterFragCoord().xy;
  vec2 world = (screen - uCameraOffset) / max(0.01, uZoom);
  vec2 drift = uDrift * uTime;
  vec2 cloudSpace = (world - drift) / spacing;
  vec2 home = floor(cloudSpace);
  float shadow = 0.0;

  for (int oy = -1; oy <= 1; oy++) {
    for (int ox = -1; ox <= 1; ox++) {
      vec2 cell = home + vec2(float(ox), float(oy));
      float exists = step(1.0 - clamp(uDensity, 0.0, 1.0), hash(cell, 1.0));
      vec2 jitter = vec2(hash(cell, 2.0) * 42.0 - 21.0,
                         hash(cell, 3.0) * 34.0 - 17.0);
      float scale = 0.75 + hash(cell, 4.0) * 0.45;
      vec2 center = cell * spacing + jitter + drift;
      vec2 delta = world - center;
      float radiusX = (18.0 + hash(cell, 6.0) * 18.0) * scale;
      float radiusY = 11.0 * scale;
      float body = 1.0 - smoothstep(0.72, 1.08,
          length(vec2(delta.x / radiusX, delta.y / radiusY)));
      float lobeA = 1.0 - smoothstep(0.68, 1.08,
          length(vec2((delta.x + radiusX * 0.34) / (radiusX * 0.58),
                      (delta.y - 2.0) / (radiusY * 0.78))));
      float lobeB = 1.0 - smoothstep(0.68, 1.08,
          length(vec2((delta.x - radiusX * 0.3) / (radiusX * 0.62),
                      (delta.y + 1.0) / (radiusY * 0.82))));
      float breakup = 0.72 + hash(cell + floor(delta / 5.0), 20.0) * 0.28;
      shadow = max(shadow, max(body, max(lobeA, lobeB)) * breakup * exists);
    }
  }

  fragColor = vec4(uColor, shadow * clamp(uOpacity, 0.0, 0.35));
}
