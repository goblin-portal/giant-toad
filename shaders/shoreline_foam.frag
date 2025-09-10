#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform float uTime;
uniform float uSpeed;
uniform float uWidth;
uniform float uOpacity;
uniform vec3 uColor;
uniform float uEdgeMask;
uniform vec2 uCell;

out vec4 fragColor;

float hash(vec2 point) {
  return fract(sin(dot(point, vec2(41.3, 289.1))) * 43758.5453);
}

float enabled(float bit) {
  return mod(floor(uEdgeMask / bit), 2.0);
}

void main() {
  vec2 size = max(uSize, vec2(1.0));
  vec2 uv = FlutterFragCoord().xy / size;
  float time = uTime * uSpeed;
  float width = clamp(uWidth, 0.015, 0.48);
  float top = enabled(1.0) * (1.0 - smoothstep(width * 0.35, width, uv.y));
  float right = enabled(2.0) * (1.0 - smoothstep(width * 0.35, width, 1.0 - uv.x));
  float bottom = enabled(4.0) * (1.0 - smoothstep(width * 0.35, width, 1.0 - uv.y));
  float left = enabled(8.0) * (1.0 - smoothstep(width * 0.35, width, uv.x));
  float edge = clamp(max(max(top, right), max(bottom, left)), 0.0, 1.0);
  vec2 world = uCell + floor(uv * 16.0) / 16.0;
  float breakup = hash(floor(world * 9.0 + vec2(time * 1.7, -time * 0.8)));
  float ripple = 0.62 + 0.38 * sin((world.x + world.y) * 18.0 - time * 4.0);
  float foam = edge * smoothstep(0.18, 0.72, breakup + ripple * 0.55);
  fragColor = vec4(uColor, clamp(foam * uOpacity, 0.0, 0.92));
}
