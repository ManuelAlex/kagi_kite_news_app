import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/domain/domain_dto_1.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/domain/domain_dto_mapper.dart';
import 'package:kagi_kite_news_app/domain/entities/value_objects/domain.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('DomainDtoMapper', () {
    testDtoMapperConversions<Domain, DomainDto1>(
      const DomainDtoMapper(),
      Domain.random(),
    );
  });
}
