import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/domain/domain_dto_1.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('DomainDto1', () {
    testDtoJsonConversion(DomainDto1.random(), DomainDto1Mapper.fromMap);
  });
}
