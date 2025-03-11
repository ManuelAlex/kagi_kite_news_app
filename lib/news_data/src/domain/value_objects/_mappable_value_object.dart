import 'package:dart_mappable/dart_mappable.dart';

/// Annotation for value objects.
///
/// Note that extending [MappableClass] has its limitations due to incomplete
/// parsing from builder. For example, it is not possible to use
/// [MappableClass.includeCustomMappers].
class MappableValueObject extends MappableClass {
  const MappableValueObject()
    : super(
        generateMethods:
            GenerateMethods.copy |
            GenerateMethods.equals |
            GenerateMethods.stringify,
      );
}
