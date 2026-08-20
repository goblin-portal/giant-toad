# Input and focus

`GiantToadActionMap` maps stable physical control strings to semantic actions.
`GiantToadActionState` exposes values, held state, and one-frame pressed/released
edges.

Add `GiantToadKeyboardActions` to a Flame game using
`HasKeyboardHandlerComponents`. `GiantToadJoystickActions` polls Flame's
`JoystickComponent`. Pointer callbacks and platform gamepad plugins feed the
same `GiantToadActionInput`; the engine deliberately does not impose a gamepad
plugin on every project.

Call `state.endFrame()` after systems consume edges. UI actions use
`ui.next`, `ui.previous`, and `ui.activate`; pass the state to
`GiantToadFocusActions.dispatchState` before clearing edges.

Use Flutter focus and semantics for overlays. Do not route gameplay actions
through a modal overlay unless the overlay intentionally allows passthrough.
