import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_1.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('PerspectiveDto1', () {
    testDtoJsonConversion(
      PerspectiveDto1.random(),
      PerspectiveDto1Mapper.fromMap,
    );
  });
}
