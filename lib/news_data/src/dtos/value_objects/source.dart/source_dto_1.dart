import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';

part 'source_dto_1.mapper.dart';

@MappableClass()
class SourceDto1 extends Dto with SourceDto1Mappable {
  const SourceDto1({required this.name, required this.url});

  /// factory random constructor for test purposes
  factory SourceDto1.random() => const SourceDto1(name: 'test', url: 'url');
  final String name;
  final String url;
}
