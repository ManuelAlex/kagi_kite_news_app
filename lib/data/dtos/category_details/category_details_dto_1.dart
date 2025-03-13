import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../_dto.dart';
import '../_hive_type_id.dart';
import '../_json_mappers/datetime_json_mapper.dart';
import '../value_objects/cluster/cluster_dto_1.dart';

part 'category_details_dto_1.mapper.dart';
part 'category_details_dto_1.g.dart';

@HiveType(typeId: HiveTypeIds.categoryDetaildDto)
@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
class CategoryDetailsDto1 extends Dto with CategoryDetailsDto1Mappable {
  const CategoryDetailsDto1({
    required this.timestamp,
    required this.category,
    required this.read,
    required this.clusters,
  });

  @HiveField(0)
  final DateTime timestamp;

  @HiveField(1)
  final String category;

  @HiveField(2)
  final int read;

  @HiveField(3)
  final List<ClusterDto1> clusters;
}
