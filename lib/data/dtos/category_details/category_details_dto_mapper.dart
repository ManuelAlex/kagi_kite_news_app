import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../domain/entities/category_details.dart';

import '../value_objects/category/category_dto_mapper.dart';
import '../value_objects/cluster/cluster_dto_mapper.dart';
import '../value_objects/value_objects.dart';
import 'category_details_dto_1.dart';
import 'category_details_dto_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[
    MapType<CategoryDetailsDto1, CategoryDetails>(reverse: true),
  ],
  includes: <AutoMapprInterface>[
    CategoryDtoMapper(),
    ClusterDtoMapper(),
    OnThisDayEventDtoMapper(),
  ],
)
class CategoryDetailsDtoMapper extends $CategoryDetailsDtoMapper {
  const CategoryDetailsDtoMapper();
}
