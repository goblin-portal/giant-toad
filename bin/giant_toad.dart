import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:giant_toad/src/cli/giant_toad_cli.dart';

Future<void> main(List<String> arguments) async {
  try {
    final result = await createGiantToadCommandRunner().run(arguments);
    exitCode = result ?? 0;
  } on UsageException catch (error) {
    stderr
      ..writeln(error.message)
      ..writeln(error.usage);
    exitCode = 64;
  } on FormatException catch (error) {
    stderr.writeln('Invalid project data: ${error.message}');
    exitCode = 1;
  } on FileSystemException catch (error) {
    stderr.writeln(error.message);
    exitCode = 1;
  }
}
