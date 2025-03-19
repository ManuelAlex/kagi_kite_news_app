import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/source/source_dto_1.dart';

import '../../_test_dto_json_conversion.dart';

void main() {
  group('SourceDto1', () {
    testDtoJsonConversion(SourceDto1.random(), SourceDto1Mapper.fromMap);
  });
}
