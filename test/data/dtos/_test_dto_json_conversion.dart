import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/_dto.dart';

/// Test conversion of DTO to JSON and back using the [Dto.toMap] and [fromMap]
/// function.
void testDtoJsonConversion<TDto extends Dto>(
  TDto dto,
  TDto Function(Map<String, dynamic> map) fromMap,
) {
  test('toMap and fromMap JSON conversion', () {
    final Map<String, dynamic> jsonObject = dto.toMap();
    final TDto decodedDto = fromMap(jsonObject);
    expect(dto, decodedDto);
  });
}
