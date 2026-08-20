# Scenes, audio, and diagnostics

## Scenes

`GiantToadSceneRouter` is a naming convenience over Flame `RouterComponent`.
Routes remain Flame routes. `GiantToadSceneRoute` adds activation callbacks and
reverse-order resource disposal; it does not introduce another scene graph.

## Audio

`GiantToadAudio` uses `flame_audio`, adding master/music/sound/UI buses, queued
browser activation, and music crossfades. Construct with
`requiresActivation: true` on web and call `unlock` from the first user gesture.

## Determinism and dialogue

`GiantToadRandom` is state-serializable and stable on Dart VM and JavaScript.
`GiantToadDialogue` owns only graph state and callbacks; render it using Flutter
pixel UI.

## Diagnostics

Use Flame debug mode and Dart timeline tooling first. `GiantToadDiagnostics`
collects named game-specific values for `GiantToadDebugOverlay`. Avoid measuring
or allocating diagnostics while the overlay is hidden.
