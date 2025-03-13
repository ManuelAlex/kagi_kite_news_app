import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/article/article_dto_1.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/article/article_dto_mapper.dart';
import 'package:kagi_kite_news_app/domain/entities/value_objects/article.dart';

import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('ArticleDtoMapper', () {
    testDtoMapperConversions<Article, ArticleDto1>(
      const ArticleDtoMapper(),
      Article.random(),
    );
  });
}
