import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/perspective/perspective_dto_1.dart';

import '../../_test_dto_json_conversion.dart';

void main() {
  group('PerspectiveDto1', () {
    testDtoJsonConversion(
      PerspectiveDto1.random(),
      PerspectiveDto1Mapper.fromMap,
    );
  });
}
