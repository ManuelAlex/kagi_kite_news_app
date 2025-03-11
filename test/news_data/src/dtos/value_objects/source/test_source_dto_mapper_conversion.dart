import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/news_data/news_data.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/source.dart/source_dto_1.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/source.dart/source_dto_mapper.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('SourceDtoMapper', () {
    testDtoMapperConversions<Source, SourceDto1>(
      const SourceDtoMapper(),
      Source.random(),
    );
  });
}
