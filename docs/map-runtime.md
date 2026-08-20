# Map runtime

`GiantToadMapDocument` preserves sparse signed chunks and unknown authored
fields. `GiantToadMapEditTransaction` groups a paint operation into one
reversible edit.

Runtime layers:

1. `GiantToadTileCell` interprets numeric and rich cells.
2. `GiantToadTileset` maps global tile ids to regular atlas rectangles.
3. `GiantToadAtlasTileRenderer` supplies a nearest-neighbor renderer to
   `GiantToadTilemapComponent`.
4. `GiantToadMapObject` validates placed objects while retaining properties.
5. `GiantToadAreaTracker` emits stable cell-space enter/exit changes.
6. `GiantToadAutotileRules` resolves authored masks.
7. `GiantToadTileCollision` and `GiantToadPixelBody` provide optional
   kinematic solid-layer movement.

Flame remains responsible for component ownership and entity hitbox callbacks.
Large maps should retain sparse chunks and avoid producing one Flame component
per tile.
