// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'data/dtos/category_details/category_details_dto_1.dart';
import 'data/dtos/news_categories/news_categories_dto_1.dart';
import 'data/dtos/value_objects/article/article_dto_1.dart';
import 'data/dtos/value_objects/category/category_dto_1.dart';
import 'data/dtos/value_objects/cluster/cluster_dto_1.dart';
import 'data/dtos/value_objects/domain/domain_dto_1.dart';
import 'data/dtos/value_objects/on_this_day_event/on_this_day_event_dto_1.dart';
import 'data/dtos/value_objects/perspective/perspective_dto_1.dart';
import 'data/dtos/value_objects/source/source_dto_1.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(ArticleDto1Adapter());
    registerAdapter(CategoryDetailsDto1Adapter());
    registerAdapter(CategoryDto1Adapter());
    registerAdapter(ClusterDto1Adapter());
    registerAdapter(DomainDto1Adapter());
    registerAdapter(NewsCategoriesDto1Adapter());
    registerAdapter(OnThisDayEventDto1Adapter());
    registerAdapter(PerspectiveDto1Adapter());
    registerAdapter(SourceDto1Adapter());
  }
}
