import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/news_data/news_data.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/article/article_dto_1.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/article/article_dto_mapper.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('ArticleDtoMapper', () {
    testDtoMapperConversions<Article, ArticleDto1>(
      const ArticleDtoMapper(),
      Article.random(),
    );
  });
}
