import 'package:dart_mappable/dart_mappable.dart';
import '../../_dto.dart';
import '../../json_mappers/datetime_json_mapper.dart';
import '../../value_objects/cluster/cluster_dto_1.dart';

part 'category_details_dto_1.mapper.dart';

@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
class CategoryDetailsDto1 extends Dto with CategoryDetailsDto1Mappable {
  const CategoryDetailsDto1({
    required this.timestamp,
    required this.category,
    required this.read,
    required this.clusters,
  });
  final DateTime timestamp;
  final String category;
  final int read;
  final List<ClusterDto1> clusters;
}
