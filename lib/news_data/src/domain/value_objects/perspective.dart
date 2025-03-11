import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';
import 'source.dart';

part 'perspective.mapper.dart';

@MappableValueObject()
class Perspective with PerspectiveMappable {
  const Perspective({required this.text, required this.sources});

  /// Used for test purposes
  factory Perspective.random() =>
      Perspective(text: 'test', sources: <Source>[Source.random()]);
  final String text;
  final List<Source> sources;
}
