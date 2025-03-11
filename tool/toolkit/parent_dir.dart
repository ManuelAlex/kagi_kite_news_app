import 'dart:io';

import 'script_dir.dart';

/// Returns the parent directory of the current script's working directory.
Directory get parentDir => scriptDir.parent;
