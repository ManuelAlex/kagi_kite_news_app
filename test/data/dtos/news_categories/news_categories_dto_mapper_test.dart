import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';

import '../_test_dto_mapper_conversions.dart';

void main() {
  group('NewsCategoriesDtoMapper', () {
    testDtoMapperConversions<NewsCategories, NewsCategoriesDto1>(
      const NewsCategoriesDtoMapper(),
      NewsCategories.random(),
    );
  });
}
