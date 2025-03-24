import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../_dto.dart';
import '../_hive_type_id.dart';
import '../_json_mappers/datetime_json_mapper.dart';
import '../value_objects/category/category_dto_1.dart';

part 'news_categories_dto_1.mapper.dart';

part 'news_categories_dto_1.g.dart';

@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
@HiveType(typeId: HiveTypeIds.newCategoriesDto)
class NewsCategoriesDto1 extends Dto with NewsCategoriesDto1Mappable {
  const NewsCategoriesDto1({required this.categories, required this.timestamp});
  // Randon factory constructor for test purposes.
  factory NewsCategoriesDto1.random() => NewsCategoriesDto1(
    timestamp: DateTime.now().toUtc(),
    categories: List.generate(6, (index) => CategoryDto1.random()),
  );
  @HiveField(0)
  final List<CategoryDto1> categories;

  @HiveField(1)
  final DateTime timestamp;
}
