#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform float uTime;
uniform float uIntensity;
uniform float uSpeed;
uniform vec3 uColor;

out vec4 fragColor;

float hash(vec2 point) {
  return fract(sin(dot(point, vec2(127.1, 311.7))) * 43758.5453);
}

float noise(vec2 point) {
  vec2 cell = floor(point);
  vec2 local = fract(point);
  local = local * local * (3.0 - 2.0 * local);
  return mix(
    mix(hash(cell), hash(cell + vec2(1.0, 0.0)), local.x),
    mix(hash(cell + vec2(0.0, 1.0)), hash(cell + vec2(1.0)), local.x),
    local.y
  );
}

void main() {
  vec2 size = max(uSize, vec2(1.0));
  vec2 uv = FlutterFragCoord().xy / size;
  float time = uTime * uSpeed;
  vec2 pixelUv = floor(uv * 16.0) / 16.0;
  float flowA = noise(vec2(pixelUv.x * 5.0 + time * 0.35, pixelUv.y * 7.0 - time));
  float flowB = noise(vec2(pixelUv.x * 9.0 - time * 0.55, pixelUv.y * 4.0 + time * 0.45));
  float pulse = 0.5 + 0.5 * sin(time * 2.2 + (flowA + flowB) * 5.0);
  float veins = smoothstep(0.38, 0.82, flowA * 0.62 + flowB * 0.38);
  float edge = smoothstep(0.0, 0.12, uv.x) * smoothstep(0.0, 0.12, uv.y)
      * smoothstep(0.0, 0.12, 1.0 - uv.x) * smoothstep(0.0, 0.12, 1.0 - uv.y);
  float glare = (0.16 + veins * 0.34 + pulse * 0.18) * uIntensity * edge;
  vec3 hot = mix(uColor * 0.72, min(vec3(1.0), uColor * 1.45 + vec3(0.12, 0.04, 0.0)), pulse);
  fragColor = vec4(hot, clamp(glare, 0.0, 0.78));
}
