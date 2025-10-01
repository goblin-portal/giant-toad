import 'dart:io';

import 'package:flame/components.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/src/cli/giant_toad_cli.dart';
import 'package:giant_toad/giant_toad.dart';
import 'package:giant_toad/giant_toad_ui.dart';

void main() {
  group('GiantToadGame', () {
    test('uses its supplied world and logical resolution', () {
      final world = World();
      final game = GiantToadGame(
        world: world,
        resolution: GiantToadResolution(width: 320, height: 180),
      );

      expect(game.world, same(world));
      expect(game.resolution.width, 320);
      expect(game.resolution.height, 180);
      expect(game.camera.viewport, isA<GiantToadPixelViewport>());
      expect(
        (game.camera.viewport as GiantToadPixelViewport).mode,
        GiantToadViewportMode.expand,
      );
    });

    test('defaults to 800 by 600 at 2x expand mode', () {
      final game = GiantToadGame(world: World());

      expect(game.resolution.width, 800);
      expect(game.resolution.height, 600);
      expect(
        (game.camera.viewport as GiantToadPixelViewport).mode,
        GiantToadViewportMode.expand,
      );
      expect(game.pixelScale, 2);
      game.onGameResize(Vector2(1600, 900));
      expect(game.camera.viewport.virtualSize, Vector2(800, 450));
      expect(game.camera.viewfinder.position, Vector2(400, 225));
    });

    test('centers the initial camera on the logical canvas', () {
      final game = GiantToadGame(
        world: World(),
        resolution: GiantToadResolution(width: 320, height: 180),
      );

      expect(game.camera.viewfinder.position, Vector2(160, 90));
    });

    test('expands logical height while preserving logical width', () {
      final viewport = GiantToadPixelViewport(
        resolution: GiantToadResolution(width: 320, height: 120),
        mode: GiantToadViewportMode.expandWidth,
      );

      viewport.onGameResize(Vector2(960, 720));

      expect(viewport.metrics.scale, 3);
      expect(viewport.metrics.offset, Vector2.zero());
      expect(viewport.virtualSize, Vector2(320, 240));
    });

    test('centers the expanded viewport before camera follow', () {
      final game = GiantToadGame(
        world: World(),
        resolution: GiantToadResolution(width: 320, height: 120),
      );

      game.onGameResize(Vector2(960, 720));

      expect(game.camera.viewfinder.position, Vector2(240, 180));
    });

    test('keeps the fixed canvas mode available explicitly', () {
      final viewport = GiantToadPixelViewport(
        resolution: GiantToadResolution(width: 320, height: 120),
      );

      viewport.onGameResize(Vector2(960, 720));

      final game = GiantToadGame(
        world: World(),
        resolution: GiantToadResolution(width: 320, height: 120),
        viewportMode: GiantToadViewportMode.fixed,
      );
      expect(game.viewportMode, GiantToadViewportMode.fixed);

      expect(viewport.virtualSize, Vector2(320, 120));
      expect(viewport.metrics.offset, Vector2(0, 180));
    });

    test('letterboxes a canvas using the largest fitting integer scale', () {
      final metrics = GiantToadViewportMetrics.fit(
        resolution: GiantToadResolution(width: 320, height: 180),
        canvasSize: Vector2(1024, 768),
      );

      expect(metrics.scale, 3);
      expect(metrics.size, Vector2(960, 540));
      expect(metrics.offset, Vector2(32, 114));
    });

    test('scales down only when the canvas is smaller than the resolution', () {
      final metrics = GiantToadViewportMetrics.fit(
        resolution: GiantToadResolution(width: 320, height: 180),
        canvasSize: Vector2(160, 90),
      );

      expect(metrics.scale, 0.5);
      expect(metrics.size, Vector2(160, 90));
      expect(metrics.offset, Vector2.zero());
    });

    test('round-trips coordinates without Flame internal transforms', () {
      final viewport = GiantToadPixelViewport(
        resolution: GiantToadResolution(width: 320, height: 180),
      )..onGameResize(Vector2(1024, 768));
      final logical = Vector2(17, 29);
      final global = viewport.localToGlobal(logical);

      expect(global, Vector2(83, 201));
      expect(viewport.globalToLocal(global), logical);
    });
  });

  group('GiantToadPixelCoordinates', () {
    final resolution = GiantToadResolution(width: 320, height: 180);
    final metrics = GiantToadViewportMetrics.fit(
      resolution: resolution,
      canvasSize: Vector2(1024, 768),
    );

    test('snaps to the nearest logical pixel', () {
      expect(
        GiantToadPixelCoordinates.snap(Vector2(10.49, 20.5)),
        Vector2(10, 21),
      );
    });

    test('converts between logical and letterboxed canvas coordinates', () {
      final canvas = GiantToadPixelCoordinates.logicalToCanvas(
        metrics: metrics,
        logicalPosition: Vector2(10, 20),
      );

      expect(canvas, Vector2(62, 174));
      expect(
        GiantToadPixelCoordinates.canvasToLogical(
          resolution: resolution,
          metrics: metrics,
          canvasPosition: canvas,
        ),
        Vector2(10, 20),
      );
    });

    test('rejects a point in the letterbox', () {
      expect(
        GiantToadPixelCoordinates.canvasToLogical(
          resolution: resolution,
          metrics: metrics,
          canvasPosition: Vector2(10, 100),
        ),
        isNull,
      );
    });
  });

  group('GiantToadMapDocument', () {
    final mapJson = <String, Object?>{
      '_documents': const [],
      'tileSize': 16,
      'chunkSize': 2,
      'layers': [
        {
          'id': 'ground',
          'name': 'Ground',
          'chunks': {
            '-1,0': [
              0,
              {'tileId': 'desert', 'region': 'desert:6', 'mask': 255},
              0,
              0,
            ],
          },
        },
      ],
      'objects': [
        {'id': 'spawn-1', 'type': 'spawn', 'x': 24, 'y': 48},
      ],
    };

    test('decodes and preserves the canonical sparse map contract', () {
      final map = GiantToadMapDocument.fromJson(mapJson);

      expect(map.tileSize, 16);
      expect(map.chunkSize, 2);
      expect(map.layers.single.chunks.keys.single, GiantToadChunkKey(-1, 0));
      expect(map.layers.single.chunks.values.single[1], {
        'tileId': 'desert',
        'region': 'desert:6',
        'mask': 255,
      });
      expect(map.toJson(), mapJson);
      expect(
        GiantToadMapDocumentCodec.decode(
          GiantToadMapDocumentCodec.encode(map),
        ).toJson(),
        mapJson,
      );
    });

    test('visits only non-empty cells in intersecting sparse chunks', () {
      final map = GiantToadMapDocument.fromJson(mapJson);
      final visited = <(int, int, GiantToadMapCell)>[];

      map.layers.single.forEachCellInBounds(
        chunkSize: map.chunkSize,
        minX: -1,
        minY: 0,
        maxX: -1,
        maxY: 0,
        visit: (cell, x, y) => visited.add((x, y, cell)),
      );

      expect(visited, hasLength(1));
      expect(visited.single.$1, -1);
      expect(visited.single.$2, 0);
      expect(visited.single.$3, {
        'tileId': 'desert',
        'region': 'desert:6',
        'mask': 255,
      });
    });

    test('indexes visible chunks and reports bounded traversal work', () {
      final chunks = <String, Object?>{
        for (var index = 0; index < 1000; index++)
          '$index,0': [index + 1, 0, 0, 0],
      };
      final map = GiantToadMapDocument.fromJson({
        'tileSize': 16,
        'chunkSize': 2,
        'layers': [
          {'id': 'ground', 'name': 'Ground', 'chunks': chunks},
        ],
      });
      final metrics = GiantToadMapTraversalMetrics();
      final visited = <GiantToadMapCell>[];

      map.layers.single.forEachCellInBounds(
        chunkSize: map.chunkSize,
        minX: 1000,
        minY: 0,
        maxX: 1001,
        maxY: 1,
        visit: (cell, _, _) => visited.add(cell),
        metrics: metrics,
      );

      expect(visited, [501]);
      expect(metrics.chunksVisited, 1);
      expect(metrics.cellsVisited, 4);
    });

    test('freezes nested map values and chunk cells', () {
      final nested = <String, Object?>{
        'items': [
          {'value': 1},
        ],
      };
      final map = GiantToadMapDocument(
        tileSize: 16,
        chunkSize: 1,
        layers: [
          GiantToadMapLayer(
            id: 'ground',
            name: 'Ground',
            chunks: {
              const GiantToadChunkKey(0, 0): [nested],
            },
          ),
        ],
        objects: [nested],
        additionalFields: nested,
      );

      (nested['items']! as List).clear();
      expect(map.layers.single.chunks.values.single.single, {
        'items': [
          {'value': 1},
        ],
      });
      expect(
        () => (map.objects.single['items']! as List).clear(),
        throwsUnsupportedError,
      );
      expect(
        () => map.layers.single.chunks.values.single.clear(),
        throwsUnsupportedError,
      );
    });

    test('commits a paint stroke as one reversible sparse edit', () {
      final original = GiantToadMapDocument.fromJson(mapJson);
      final transaction = GiantToadMapEditTransaction(original)
        ..setCell(layerId: 'ground', x: 0, y: 0, value: 3)
        ..setCell(layerId: 'ground', x: 0, y: 0, value: 4)
        ..setCell(layerId: 'ground', x: -1, y: 0, value: 0);

      final edit = transaction.commit();
      expect(edit, isNotNull);

      final updated = edit!.apply(original);
      expect(updated.layers.single.chunks[GiantToadChunkKey(0, 0)], [
        4,
        0,
        0,
        0,
      ]);
      expect(
        updated.layers.single.chunks.containsKey(GiantToadChunkKey(-1, 0)),
        isFalse,
      );
      expect(
        original.layers.single.chunks.containsKey(GiantToadChunkKey(-1, 0)),
        isTrue,
      );

      final restored = edit.inverse.apply(updated);
      expect(restored.toJson(), original.toJson());
    });
    test('rejects chunks that do not match the document chunk size', () {
      final invalid = <String, Object?>{
        'tileSize': 16,
        'chunkSize': 2,
        'layers': [
          {
            'id': 'ground',
            'name': 'Ground',
            'chunks': {
              '0,0': [0],
            },
          },
        ],
      };

      expect(
        () => GiantToadMapDocument.fromJson(invalid),
        throwsFormatException,
      );
    });
  });

  group('GiantToadGrid', () {
    test('converts negative world positions using floor division', () {
      expect(
        GiantToadGrid.worldToCell(
          worldPosition: Vector2(-1, 31.9),
          tileSize: 16,
        ),
        Vector2(-1, 1),
      );
      expect(
        GiantToadGrid.cellBounds(x: -1, y: 1, tileSize: 16),
        const Rect.fromLTWH(-16, 16, 16, 16),
      );
    });
  });

  group('GiantToadAutotile', () {
    test('uses gated blob bit assignments for diagonals', () {
      final matchingCells = <(int, int)>{(0, -1), (1, 0), (1, -1), (1, 1)};

      expect(
        GiantToadAutotile.cardinalMask(
          x: 0,
          y: 0,
          matches: (x, y) => matchingCells.contains((x, y)),
        ),
        3,
      );
      expect(
        GiantToadAutotile.blobMask(
          x: 0,
          y: 0,
          matches: (x, y) => matchingCells.contains((x, y)),
        ),
        19,
      );
    });
  });

  group('GiantToadAreaDocument', () {
    test('decodes and queries cell-space areas', () {
      final document = GiantToadAreaDocumentCodec.decode('''
        {
          "areas": [{
            "id": "room-a",
            "name": "Room A",
            "type": "room",
            "areaSchema": "room",
            "x": -2,
            "y": 1,
            "width": 3,
            "height": 2,
            "values": {"music": "cave"}
          }]
        }
      ''');

      expect(document.areasAtCell(-1, 2).single.name, 'Room A');
      expect(document.areasAtCell(1, 2), isEmpty);
      expect(
        GiantToadAreaDocumentCodec.decode(
          GiantToadAreaDocumentCodec.encode(document),
        ).toJson(),
        document.toJson(),
      );
    });
  });

  group('GiantToadSteering', () {
    test('seeks, flees, and slows on arrival without mutating inputs', () {
      final position = Vector2(0, 0);
      final target = Vector2(10, 0);

      expect(
        GiantToadSteering.seek(position: position, target: target, speed: 5),
        Vector2(5, 0),
      );
      expect(
        GiantToadSteering.flee(position: position, threat: target, speed: 5),
        Vector2(-5, 0),
      );
      expect(
        GiantToadSteering.arrive(
          position: Vector2(8, 0),
          target: target,
          speed: 10,
          slowRadius: 4,
        ),
        Vector2(5, 0),
      );
      expect(position, Vector2.zero());
      expect(target, Vector2(10, 0));
    });
  });

  group('GiantToadPathfinding', () {
    test('finds a deterministic route around blocked cells', () {
      final path = GiantToadPathfinding.findGridPath(
        start: const GiantToadCell(0, 0),
        goal: const GiantToadCell(2, 0),
        bounds: const GiantToadGridBounds(minX: 0, minY: 0, maxX: 2, maxY: 2),
        isBlocked: (cell) => cell == const GiantToadCell(1, 0),
      );

      expect(path, [
        const GiantToadCell(0, 1),
        const GiantToadCell(1, 1),
        const GiantToadCell(2, 1),
        const GiantToadCell(2, 0),
      ]);
    });

    test('supports diagonal routes and deterministic node limits', () {
      final diagonal = GiantToadPathfinding.findGridPath(
        start: const GiantToadCell(0, 0),
        goal: const GiantToadCell(2, 2),
        bounds: const GiantToadGridBounds(minX: 0, minY: 0, maxX: 2, maxY: 2),
        isBlocked: (_) => false,
        diagonal: true,
        maxNodes: 20,
      );
      expect(diagonal, [const GiantToadCell(1, 1), const GiantToadCell(2, 2)]);
      expect(
        GiantToadPathfinding.findGridPath(
          start: const GiantToadCell(0, 0),
          goal: const GiantToadCell(2, 2),
          bounds: const GiantToadGridBounds(minX: 0, minY: 0, maxX: 2, maxY: 2),
          isBlocked: (_) => false,
          maxNodes: 1,
        ),
        isEmpty,
      );
    });
  });

  group('GiantToadActionMap', () {
    test('maps physical controls to semantic actions', () {
      const moveUp = GiantToadAction('moveUp');
      const confirm = GiantToadAction('confirm');
      final actions = GiantToadActionMap({
        moveUp: ['keyW', 'gamepadUp'],
        confirm: ['keySpace', 'gamepadSouth'],
      });

      expect(actions.actionsFor('gamepadSouth'), [confirm]);
      expect(actions.isBound(moveUp, 'keyW'), isTrue);
      expect(actions.isBound(moveUp, 'keyS'), isFalse);
    });

    test('persists bindings and exposes held semantic actions', () {
      const pause = GiantToadAction('pause');
      final actions = GiantToadActionMap({
        pause: ['keyEscape', 'gamepadStart'],
      });
      final state = GiantToadActionState(actions)..press('gamepadStart');

      expect(state.isPressed(pause), isTrue);
      expect(
        GiantToadActionMapCodec.decode(
          GiantToadActionMapCodec.encode(actions),
        ).isBound(pause, 'keyEscape'),
        isTrue,
      );
      state.release('gamepadStart');
      expect(state.isPressed(pause), isFalse);
    });
  });

  group('GiantToad pixel UI', () {
    testWidgets('activates enabled buttons and leaves disabled buttons inert', (
      tester,
    ) async {
      var presses = 0;
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: GiantToadUiThemeScope(
            theme: const GiantToadUiTheme(),
            child: GiantToadPixelPanel(
              child: GiantToadPixelButton(
                label: 'Play',
                onPressed: () => presses++,
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.text('Play'));
      expect(presses, 1);
    });

    testWidgets('aligns input to the logical letterboxed canvas', (
      tester,
    ) async {
      var presses = 0;
      final resolution = GiantToadResolution(width: 10, height: 10);
      final metrics = GiantToadViewportMetrics.fit(
        resolution: resolution,
        canvasSize: Vector2(50, 40),
      );
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              GiantToadOverlay(
                resolution: resolution,
                metrics: metrics,
                child: GiantToadPixelButton(
                  label: 'Logical',
                  onPressed: () => presses++,
                ),
              ),
            ],
          ),
        ),
      );

      await tester.tapAt(const Offset(10, 20));
      expect(presses, 1);
      await tester.tapAt(const Offset(1, 1));
      expect(presses, 1);
    });

    testWidgets('builds reusable menu dialogue and HUD widgets', (
      tester,
    ) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: GiantToadUiThemeScope(
            theme: GiantToadUiTheme(),
            child: GiantToadMenu(
              title: 'MENU',
              children: [
                GiantToadDialogueBox(text: 'Hello'),
                GiantToadTooltip(message: 'Tip'),
                GiantToadProgressBar(value: 0.5),
                GiantToadHotbar(slots: [GiantToadItemSlot(child: Text('1'))]),
              ],
            ),
          ),
        ),
      );
      expect(find.text('MENU'), findsOneWidget);
      expect(find.text('Hello'), findsOneWidget);
      expect(find.text('Tip'), findsOneWidget);
    });
  });

  group('Giant Toad CLI workflow', () {
    test('initializes and validates a typed Dart/Flame project', () async {
      final directory = await Directory.systemTemp.createTemp(
        'giant-toad-test-',
      );
      final projectPath = '${directory.path}/pixel_game';
      try {
        final runner = createGiantToadCommandRunner();
        expect(await runner.run(['init', projectPath]), 0);
        expect(File('$projectPath/pubspec.yaml').existsSync(), isTrue);
        final projectFile = File('$projectPath/project.json');
        expect(projectFile.existsSync(), isTrue);
        final projectSource = await projectFile.readAsString();
        expect(projectSource, contains('"pixelWidth": 800'));
        expect(projectSource, contains('"pixelHeight": 600'));
        expect(Directory('$projectPath/assets/audio').existsSync(), isTrue);
        expect(Directory('$projectPath/assets/images').existsSync(), isTrue);
        expect(
          File('$projectPath/assets/images/gt-icon.png').existsSync(),
          isTrue,
        );
        expect(File('$projectPath/web/index.html').existsSync(), isTrue);
        expect(Directory('$projectPath/macos').existsSync(), isTrue);
        final mainFile = File('$projectPath/lib/main.dart');
        expect(mainFile.existsSync(), isTrue);
        expect(await mainFile.readAsString(), contains('GiantToadGame'));
        expect(await runner.run(['validate', projectPath]), 0);
        expect(
          await runner.run([
            'export',
            '--target',
            'web',
            '--dry-run',
            projectPath,
          ]),
          0,
        );
        await mainFile.writeAsString('void main() {}');
        expect(await runner.run(['validate', projectPath]), 1);
      } finally {
        await directory.delete(recursive: true);
      }
    });
  });
  group('GiantToadResolution', () {
    test('rejects non-positive dimensions', () {
      expect(
        () => GiantToadResolution(width: 0, height: 180),
        throwsArgumentError,
      );
      expect(
        () => GiantToadResolution(width: 320, height: -1),
        throwsArgumentError,
      );
    });
  });
}
