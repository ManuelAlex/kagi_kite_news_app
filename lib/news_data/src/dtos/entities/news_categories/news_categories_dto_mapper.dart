import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../domain/entities/news_categories.dart';
import '../../value_objects/category/category_dto_mapper.dart';
import 'news_categories_dto_1.dart';
import 'news_categories_dto_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[
    MapType<NewsCategoriesDto1, NewsCategories>(reverse: true),
  ],
  includes: <AutoMapprInterface>[CategoryDtoMapper()],
)
class NewsCategoriesDtoMapper extends $NewsCategoriesDtoMapper {
  const NewsCategoriesDtoMapper();
}
