import 'pub_global_list.dart';
import 'toolkit/dart_cmd.dart';
import 'toolkit/run_process.dart';

/// Activates a package so that it can be run from command line.
Future<void> pubGlobalActivate(
  String package, {
  String? versionConstraint,
  bool force = false,
}) async {
  // Ensure that the dependency_validator is installed.
  final List<String> packages = await pubGlobalList();
  if (!packages.contains(package) || force) {
    await runProcess(
      <String>[
        dartCmd,
        'pub',
        'global',
        'activate',
        package,
        if (versionConstraint != null) versionConstraint,
      ],
    );
  }
}
