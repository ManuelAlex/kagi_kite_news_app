import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';
import '../source.dart/source_dto_1.dart';

part 'perspective_dto_1.mapper.dart';

@MappableClass()
class PerspectiveDto1 extends Dto with PerspectiveDto1Mappable {
  const PerspectiveDto1({required this.text, required this.sources});

  /// Used for test purposes
  factory PerspectiveDto1.random() =>
      PerspectiveDto1(text: 'test', sources: <SourceDto1>[SourceDto1.random()]);
  final String text;
  final List<SourceDto1> sources;
}
