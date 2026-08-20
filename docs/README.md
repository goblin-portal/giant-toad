# Giant Toad documentation

Design notes, production guides, and API documentation for
[Giant Toad](https://github.com/goblin-loot/giant-toad).

## Guides

- [Pixel-art production workflow](pixel-art-workflow.md)
- [Map Magnet runtime](map-runtime.md)
- [Input and focus](input.md)
- [Persistence](persistence.md)
- [Scenes, audio, and diagnostics](runtime-systems.md)
- [Platform release gates](platform-gates.md)

## Engineering references

- [Feature and Flame-overlap audit](feature-audit.md)
- [Behavioral parity inventory](parity-inventory.md)
- [Direct example source audit](example-source-audit.md)

The generated [API reference](api/index.md) documents the public Dart package.
Regenerate it from the repository root with:

```sh
./tool/generate_docs.sh
```
