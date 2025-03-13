import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';

part 'source.mapper.dart';

@MappableValueObject()
class Source with SourceMappable {
  const Source({required this.name, required this.url});

  /// random factory constructor for test purposes
  factory Source.random() => const Source(name: 'name', url: 'url');
  final String name;
  final String url;
}
