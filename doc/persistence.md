# Persistence

Use `GiantToadPreferencesStore.create` for Flutter-supported desktop, mobile,
and web persistence. Values are JSON encoded under a project namespace.
`GiantToadMemoryStore` is deterministic test storage.

`GiantToadSaveSlots` validates names, records schema versions, lists slots, and
requires one-version-at-a-time migrations. Save values must remain
JSON-compatible. Reject newer schemas rather than silently discarding fields.

`GiantToadSettings` is a typed fallback facade over the same store. Keep
settings and save prefixes separate. Load persistent data before mounting the
playable world and flush intentional checkpoints rather than writing every
frame.
