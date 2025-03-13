import 'toolkit/dart_cmd.dart';
import 'toolkit/parent_dir.dart';
import 'toolkit/run_process.dart';

Future<void> main(List<String> arguments) async {
  final List<String> args = <String>[dartCmd, 'fix', '--apply'] + arguments;

  await runProcess(args, workingDirectory: parentDir.path);

  final List<String> formatArgs = <String>[dartCmd, 'format', '.'] + arguments;
  await runProcess(formatArgs, workingDirectory: parentDir.path);
}
