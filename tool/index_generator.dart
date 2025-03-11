// Automatically generate index / barrel / library files with all the export
// needed for your library.

import 'pub_global_activate.dart';
import 'toolkit/dart_cmd.dart';
import 'toolkit/parent_dir.dart';
import 'toolkit/run_process.dart';

Future<void> main(List<String> arguments) async {
  // Ensure that the index_generator is installed.
  await pubGlobalActivate('index_generator');

  // Automatically generate code from annotations.
  final List<String> args =
      <String>[
        dartCmd,
        'pub',
        'global',
        'run',
        'index_generator',
        '--settings',
        'index_generator.yaml',
      ] +
      arguments;
  await runProcess(args, workingDirectory: parentDir.path);
}
