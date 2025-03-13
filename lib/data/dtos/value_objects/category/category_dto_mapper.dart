import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../domain/entities/value_objects/category.dart';
import 'category_dto_1.dart';
import 'category_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<CategoryDto1, Category>(reverse: true),
])
class CategoryDtoMapper extends $CategoryDtoMapper {
  const CategoryDtoMapper();
}
