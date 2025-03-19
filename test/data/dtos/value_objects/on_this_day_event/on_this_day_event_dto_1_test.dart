import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/dtos.dart';

import '../../_test_dto_json_conversion.dart';

void main() {
  group('OnThisDayEventDto1', () {
    testDtoJsonConversion(
      OnThisDayEventDto1.random(),
      OnThisDayEventDto1Mapper.fromMap,
    );
  });
}
