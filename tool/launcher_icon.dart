import 'toolkit/dart_cmd.dart';
import 'toolkit/parent_dir.dart';
import 'toolkit/run_process.dart';

Future<void> main(List<String> arguments) async {
  final List<String> flutterArgs =
      <String>[dartCmd, 'run', 'flutter_launcher_icons:generate'] + arguments;

  await runProcess(flutterArgs, workingDirectory: parentDir.path);
}
