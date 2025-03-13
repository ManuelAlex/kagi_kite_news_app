import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';

part 'source_dto_1.mapper.dart';
part 'source_dto_1.g.dart';

@HiveType(typeId: HiveTypeIds.sourceDto)
@MappableClass()
class SourceDto1 extends Dto with SourceDto1Mappable {
  const SourceDto1({required this.name, required this.url});

  /// Factory random constructor for test purposes
  factory SourceDto1.random() => const SourceDto1(name: 'test', url: 'url');

  @HiveField(0) // Assign unique field IDs
  final String name;

  @HiveField(1)
  final String url;
}
