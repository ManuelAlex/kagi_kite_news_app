import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';
import '../../json_mappers/datetime_json_mapper.dart';
import '../../value_objects/category/category_dto_1.dart';

part 'news_categories_dto_1.mapper.dart';

@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
class NewsCategoriesDto1 extends Dto with NewsCategoriesDto1Mappable {
  const NewsCategoriesDto1({required this.categories, required this.timestamp});
  final List<CategoryDto1> categories;
  final DateTime timestamp;
}
