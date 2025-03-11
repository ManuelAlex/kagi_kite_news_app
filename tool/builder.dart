import 'toolkit/dart_cmd.dart';

import 'toolkit/parent_dir.dart';
import 'toolkit/run_process.dart';

Future<void> main(List<String> arguments) async {
  // Automatically generate code from annotations.
  final List<String> flutterArgs =
      <String>[
        dartCmd,
        'run',
        'build_runner',
        'build',
        '--delete-conflicting-outputs',
      ] +
      arguments;

  await runProcess(flutterArgs, workingDirectory: parentDir.path);
}
