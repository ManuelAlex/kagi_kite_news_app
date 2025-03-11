import 'dart:io';

import 'toolkit/dart_cmd.dart';

/// Returns list of globally activated packages.
Future<List<String>> pubGlobalList() async {
  final String text = await runOutput(dartCmd, <String>[
    'pub',
    'global',
    'list',
  ]);
  final List<String> lines = text.split('\n');
  return lines
      .where((String line) => line.isNotEmpty)
      .map((String line) => line.split(' ').first)
      .toList();
}

Future<String> runOutput(
  String cmd,
  List<String> args, {
  String? workingDirectory,
}) async {
  stderr.writeln(
    "[$cmd] ${args.join(' ')} @ ${workingDirectory ?? Directory.current.path}",
  );
  final ProcessResult result = await Process.run(
    cmd,
    args,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) {
    throw Exception('Process exited with code ${result.exitCode}');
  }
  return result.stdout.toString();
}
