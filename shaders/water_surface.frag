#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform float uTime;
uniform float uIntensity;
uniform float uSpeed;
uniform float uStrength;
uniform vec3 uColor;
uniform vec2 uCell;
uniform vec2 uDirection;

out vec4 fragColor;

float hash(vec2 point) {
  return fract(sin(dot(point, vec2(127.1, 311.7))) * 43758.5453);
}

float noise(vec2 point) {
  vec2 cell = floor(point);
  vec2 local = fract(point);
  local = local * local * (3.0 - 2.0 * local);
  return mix(mix(hash(cell), hash(cell + vec2(1.0, 0.0)), local.x),
      mix(hash(cell + vec2(0.0, 1.0)), hash(cell + vec2(1.0)), local.x), local.y);
}

void main() {
  vec2 size = max(uSize, vec2(1.0));
  vec2 uv = FlutterFragCoord().xy / size;
  vec2 world = uCell + floor(uv * 16.0) / 16.0;
  float time = uTime * uSpeed;
  vec2 direction = length(uDirection) > 0.001 ? normalize(uDirection) : vec2(1.0, 0.0);
  vec2 travel = direction * time;
  float wave = sin((world.x * 7.0 + world.y * 2.5) - dot(travel, vec2(2.0, 1.2)));
  float crossing = sin((world.x * 2.5 - world.y * 8.0) + dot(travel, vec2(1.1, -1.35)));
  float drift = noise(vec2(world.x * 2.2, world.y * 3.1) - travel * vec2(0.28, 0.2));
  float crest = smoothstep(0.58, 0.94, wave * 0.32 + crossing * 0.18 + drift * 0.72);
  float pulse = 0.72 + 0.28 * sin(time * 0.8 + drift * 4.0);
  float alpha = crest * uIntensity * (0.12 + uStrength * 0.32) * pulse;
  vec3 highlight = min(vec3(1.0), uColor * (0.88 + crest * 0.34));
  fragColor = vec4(highlight, clamp(alpha, 0.0, 0.58));
}
