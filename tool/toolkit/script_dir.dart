import 'dart:io';

import 'package:path/path.dart';

Directory get scriptDir {
  return Directory(canonicalize(dirname(Platform.script.toFilePath())));
}
