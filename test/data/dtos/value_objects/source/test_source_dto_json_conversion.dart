import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/source.dart/source_dto_1.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('SourceDto1', () {
    testDtoJsonConversion(SourceDto1.random(), SourceDto1Mapper.fromMap);
  });
}
