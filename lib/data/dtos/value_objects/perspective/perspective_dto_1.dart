import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';
import '../source/source_dto_1.dart';

part 'perspective_dto_1.mapper.dart';
part 'perspective_dto_1.g.dart';

@MappableClass()
@HiveType(typeId: HiveTypeIds.perspectiveDto)
class PerspectiveDto1 extends Dto with PerspectiveDto1Mappable {
  const PerspectiveDto1({required this.text, required this.sources});

  /// Used for test purposes
  factory PerspectiveDto1.random() =>
      PerspectiveDto1(text: 'test', sources: <SourceDto1>[SourceDto1.random()]);

  @HiveField(0)
  final String text;

  @HiveField(1)
  final List<SourceDto1> sources;
}
