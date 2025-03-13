import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../domain/entities/value_objects/article.dart';
import 'article_dto_1.dart';
import 'article_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<ArticleDto1, Article>(reverse: true),
])
class ArticleDtoMapper extends $ArticleDtoMapper {
  const ArticleDtoMapper();
}
