import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/data.dart';

import '../_test_dto_json_conversion.dart';

void main() {
  group('ArticleDto1', () {
    testDtoJsonConversion(
      NewsCategoriesDto1.random(),
      NewsCategoriesDto1Mapper.fromMap,
    );
  });
}
