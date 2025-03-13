import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/article/article_dto_1.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('ArticleDto1', () {
    testDtoJsonConversion(ArticleDto1.random(), ArticleDto1Mapper.fromMap);
  });
}
