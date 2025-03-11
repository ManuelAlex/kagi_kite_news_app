import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/news_data/news_data.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/domain/domain_dto_1.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/domain/domain_dto_mapper.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('DomainDtoMapper', () {
    testDtoMapperConversions<Domain, DomainDto1>(
      const DomainDtoMapper(),
      Domain.random(),
    );
  });
}
