import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../data.dart';

part 'category_details_dto_1.g.dart';
part 'category_details_dto_1.mapper.dart';

/// This class serves as a unified interface for both `CategoryDetailsDto1` and `OnThisDayCategoryDto1`.
/// - Combines multiple facets (`CategoryDetails` and `OnThisDayCategory`) into a single entity.
/// - Allows dynamic handling of both regular categories and "On This Day" events.
/// - Uses `HiveType` for local persistence and `MappableClass` for serialization.

@HiveType(typeId: HiveTypeIds.categoryDetaildDto)
@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
class CategoryDetailsDto1 extends Dto with CategoryDetailsDto1Mappable {
  const CategoryDetailsDto1({
    required this.timestamp,
    this.category = 'OnThisDay', // this field should be overriden by json
    this.read = 0,
    this.clusters = const <ClusterDto1>[],
    this.events = const <OnThisDayEventDto1>[],
  });
  @HiveField(0)
  final DateTime timestamp;

  @HiveField(1)
  final String category;

  @HiveField(2)
  final int read;

  @HiveField(3)
  final List<ClusterDto1> clusters;
  @HiveField(4)
  final List<OnThisDayEventDto1> events;
}
