import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/dtos.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';

import '../../_test_dto_mapper_conversions.dart';

void main() {
  group('DomainDtoMapper', () {
    testDtoMapperConversions<Domain, DomainDto1>(
      const DomainDtoMapper(),
      Domain.random(),
    );
  });
}
