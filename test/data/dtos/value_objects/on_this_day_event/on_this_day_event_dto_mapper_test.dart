import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/dtos.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';

import '../../_test_dto_mapper_conversions.dart';

void main() {
  group('OnThisDayEventDtoMapper', () {
    testDtoMapperConversions<OnThisDayEvent, OnThisDayEventDto1>(
      const OnThisDayEventDtoMapper(),
      OnThisDayEvent.random(),
    );
  });
}
