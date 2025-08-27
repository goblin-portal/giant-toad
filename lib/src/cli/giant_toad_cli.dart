import 'dart:io';

import 'package:args/command_runner.dart';

import '../project/giant_toad_default_icon.dart';
import '../project/giant_toad_project.dart';

CommandRunner<int> createGiantToadCommandRunner() =>
    CommandRunner<int>('gt', 'Giant Toad pixel-art Flame project tools.')
      ..addCommand(_InitCommand())
      ..addCommand(_RunCommand())
      ..addCommand(_ExportCommand())
      ..addCommand(_ValidateCommand());

class _InitCommand extends Command<int> {
  @override
  final name = 'init';

  @override
  final description = 'Create a typed Dart/Flame Giant Toad project.';

  @override
  Future<int> run() async {
    if (argResults!.rest.length != 1) {
      throw UsageException('init requires <directory>.', usage);
    }
    final directory = Directory(argResults!.rest.single);
    if (await directory.exists()) {
      throw UsageException(
        'Directory already exists: ${directory.path}',
        usage,
      );
    }
    final packageName = _packageName(directory.path);
    final created = await Process.run('flutter', [
      'create',
      '--no-pub',
      '--project-name',
      packageName,
      '--platforms',
      'android,ios,linux,macos,windows,web',
      directory.path,
    ]);
    if (created.exitCode != 0) {
      stderr.write(created.stderr);
      return created.exitCode;
    }
    for (final assetRoot in GiantToadAssets.roots) {
      await Directory('${directory.path}/$assetRoot').create(recursive: true);
    }
    await File(
      '${directory.path}/pubspec.yaml',
    ).writeAsString(_pubspec(packageName));
    final metadata = GiantToadProject(
      name: packageName,
      title: 'Giant Toad Game',
      version: '0.1.0',
      pixelWidth: 800,
      pixelHeight: 600,
    );
    await File(
      '${directory.path}/project.json',
    ).writeAsString(metadata.encode());
    await File(
      '${directory.path}/${metadata.icon}',
    ).writeAsBytes(giantToadDefaultIcon());
    await File('${directory.path}/lib/main.dart').writeAsString(_mainDart);
    return 0;
  }

  static String _packageName(String path) {
    var name = path
        .replaceAll('\\', '/')
        .split('/')
        .last
        .toLowerCase()
        .replaceAll(RegExp('[^a-z0-9_]+'), '_');
    if (name.isEmpty || RegExp('^[0-9]').hasMatch(name)) name = 'game_$name';
    return name;
  }

  static String _pubspec(String name) => '''name: $name
description: A pixel-art game built with Giant Toad and Flame.
publish_to: none
version: 0.1.0+1

environment:
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  flame: ^1.38.0
  flutter:
    sdk: flutter
  giant_toad: ^0.1.0

flutter:
  assets:
    - assets/audio/
    - assets/fonts/
    - assets/images/
    - assets/maps/
''';
}

const _mainDart = '''import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  runApp(GameWidget(game: GiantToadGame(world: World())));
}
''';

class _RunCommand extends Command<int> {
  _RunCommand() {
    argParser.addOption('device', abbr: 'd', help: 'Flutter device id.');
  }

  @override
  final name = 'run';

  @override
  final description = 'Run a Giant Toad project through Flutter.';

  @override
  Future<int> run() async {
    if (argResults!.rest.length != 1) {
      throw UsageException('run requires <directory>.', usage);
    }
    final directory = Directory(argResults!.rest.single);
    if (await _validateProject(directory, stderr) != 0) return 1;
    final arguments = ['run'];
    final device = argResults!['device'] as String?;
    if (device != null && device.isNotEmpty) arguments.addAll(['-d', device]);
    final process = await Process.start(
      'flutter',
      arguments,
      workingDirectory: directory.path,
      mode: ProcessStartMode.inheritStdio,
    );
    return process.exitCode;
  }
}

class _ExportCommand extends Command<int> {
  _ExportCommand() {
    argParser
      ..addOption(
        'target',
        abbr: 't',
        allowed: const [
          'web',
          'apk',
          'appbundle',
          'ios',
          'ipa',
          'macos',
          'linux',
          'windows',
        ],
        defaultsTo: 'web',
        help: 'Flutter build target.',
      )
      ..addOption('output', abbr: 'o', help: 'Output directory (web only).')
      ..addFlag(
        'debug',
        negatable: false,
        help: 'Produce a debug build instead of a release build.',
      )
      ..addFlag(
        'dry-run',
        negatable: false,
        help: 'Validate and print the Flutter command without executing it.',
      );
  }

  @override
  final name = 'export';

  @override
  final description =
      'Build a standard Flutter desktop, mobile, or web release.';

  @override
  Future<int> run() async {
    if (argResults!.rest.length != 1) {
      throw UsageException('export requires <directory>.', usage);
    }
    final directory = Directory(argResults!.rest.single);
    if (await _validateProject(directory, stderr) != 0) return 1;
    final target = argResults!['target'] as String;
    final output = argResults!['output'] as String?;
    if (output != null && target != 'web') {
      throw UsageException(
        '--output is currently supported only for web builds.',
        usage,
      );
    }
    final arguments = [
      'build',
      target,
      if (argResults!['debug'] as bool) '--debug' else '--release',
    ];
    if (output != null) arguments.addAll(['--output', output]);
    stdout.writeln('flutter ${arguments.join(' ')}');
    if (argResults!['dry-run'] as bool) return 0;
    final process = await Process.start(
      'flutter',
      arguments,
      workingDirectory: directory.path,
      mode: ProcessStartMode.inheritStdio,
    );
    return process.exitCode;
  }
}

class _ValidateCommand extends Command<int> {
  @override
  final name = 'validate';

  @override
  final description = 'Validate a typed Dart/Flame Giant Toad project.';

  @override
  Future<int> run() async {
    if (argResults!.rest.length != 1) {
      throw UsageException('validate requires <directory>.', usage);
    }
    return _validateProject(Directory(argResults!.rest.single), stderr);
  }
}

Future<int> _validateProject(Directory directory, IOSink errors) async {
  final pubspec = File('${directory.path}/pubspec.yaml');
  final metadata = File('${directory.path}/project.json');
  final main = File('${directory.path}/lib/main.dart');
  for (final file in [pubspec, metadata, main]) {
    if (!await file.exists()) {
      errors.writeln('Missing required project file: ${file.path}');
      return 1;
    }
  }
  final pubspecSource = await pubspec.readAsString();
  if (!pubspecSource.contains(RegExp(r'^\s*giant_toad\s*:', multiLine: true)) ||
      !pubspecSource.contains(RegExp(r'^\s*flame\s*:', multiLine: true))) {
    errors.writeln('pubspec.yaml must depend on giant_toad and flame.');
    return 1;
  }
  try {
    GiantToadProject.decode(await metadata.readAsString());
  } on FormatException catch (error) {
    errors.writeln('Invalid project.json: ${error.message}');
    return 1;
  }
  final mainSource = await main.readAsString();
  if (!mainSource.contains("package:giant_toad/giant_toad.dart") ||
      !mainSource.contains('GiantToadGame')) {
    errors.writeln('lib/main.dart must create a GiantToadGame.');
    return 1;
  }
  stdout.writeln('Valid Giant Toad Dart project: ${directory.path}');
  return 0;
}
