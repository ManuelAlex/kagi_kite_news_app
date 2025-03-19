import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';

import '../../_test_dto_mapper_conversions.dart';

void main() {
  group('CategoryDtoMapper', () {
    testDtoMapperConversions<Category, CategoryDto1>(
      const CategoryDtoMapper(),
      Category.random(),
    );
  });
}
