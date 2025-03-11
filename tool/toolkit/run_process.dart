import 'dart:io';

import 'ansi.dart';

/// Runs a process with the given arguments.
Future<int> runProcess(
  List<String> args, {
  bool terminateOnFailure = true,
  String? failureMessage,
  String? workingDirectory,
  Map<String, String>? environment,
}) async {
  if (args.isEmpty) {
    throw ArgumentError(toAnsiRed('No command provided to runProcess.'));
  }

  stdout.writeln(
    '${toAnsiYellow('Running process:')} ${args.join(' ')}@${workingDirectory ?? ''}.',
  );

  final Process process = await Process.start(
    args[0],
    args.sublist(1),
    mode: ProcessStartMode.inheritStdio,
    workingDirectory: workingDirectory,
    environment: environment,
  );

  final int exitCode = await process.exitCode;
  if (exitCode != 0) {
    stderr.writeln(
      failureMessage != null
          ? toAnsiRed(
              '$failureMessage $exitCode: ${args.join(' ')}@${workingDirectory ?? ''}',
            )
          : toAnsiRed('Process failed: exit code $exitCode: ${args.join(' ')}'),
    );
    if (terminateOnFailure) {
      exit(exitCode);
    }
  } else {
    stdout.writeln(
      '${toAnsiGreen('Process completed successfully')} ${args.join(' ')}@${workingDirectory ?? ''}.',
    );
  }

  return exitCode;
}
