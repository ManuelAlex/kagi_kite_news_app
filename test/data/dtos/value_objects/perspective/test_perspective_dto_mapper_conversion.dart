import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/perspective/perspective_dto_1.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/perspective/perspective_dto_mapper.dart';
import 'package:kagi_kite_news_app/domain/entities/value_objects/perspective.dart';

import '../../_test_dto_mapper_conversions.dart';

void main() {
  group('PerspectiveDtoMapper', () {
    testDtoMapperConversions<Perspective, PerspectiveDto1>(
      const PerspectiveDtoMapper(),
      Perspective.random(),
    );
  });
}
