import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:flutter_test/flutter_test.dart';

/// Test various conversions between model and its DTO using the given [dtoMapper].
void testDtoMapperConversions<TModel, TDto>(
  AutoMapprInterface dtoMapper,
  TModel model,
) {
  group('convert', () {
    test('converts $model to $TDto and back', () {
      final TDto dto = dtoMapper.convert<TModel, TDto>(model);
      final TModel model2 = dtoMapper.convert<TDto, TModel>(dto);
      expect(model2, model);
    });

    test('converts $model? to $TDto? and back', () {
      final TDto? dto = dtoMapper.convert<TModel?, TDto?>(model);
      final TModel? convertedModel = dtoMapper.convert<TDto?, TModel?>(dto);
      expect(convertedModel, model);
    });
  });

  group('tryConvert', () {
    test('converts $model to $TDto and back', () {
      final TDto? dto = dtoMapper.tryConvert<TModel, TDto>(model);
      final TModel? convertedModel = dtoMapper.tryConvert<TDto, TModel>(dto);
      expect(convertedModel, model);
    });
  });

  group('convertIterable', () {
    test('converts iterable $model to $TDto and back', () {
      final Iterable<TDto> dtos = dtoMapper.convertIterable<TModel, TDto>(
        <TModel?>[model],
      );
      final Iterable<TModel> convertedModels = dtoMapper
          .convertIterable<TDto, TModel>(dtos);
      expect(convertedModels.length, 1);
      expect(convertedModels.first, model);
    });
  });

  group('tryConvertIterable', () {
    test('converts iterable $model to $TDto and back', () {
      final Iterable<TDto?> dtos = dtoMapper.tryConvertIterable<TModel, TDto>(
        <TModel?>[model],
      );
      final Iterable<TModel?> convertedModels = dtoMapper
          .tryConvertIterable<TDto, TModel>(dtos);
      expect(convertedModels.length, 1);
      expect(convertedModels.first, model);
    });
  });

  group('convertList', () {
    test('converts list $model to $TDto and back', () {
      final List<TDto> dtos = dtoMapper.convertList<TModel, TDto>(<TModel?>[
        model,
      ]);
      final List<TModel> convertedModels = dtoMapper.convertList<TDto, TModel>(
        dtos,
      );
      expect(convertedModels.length, 1);
      expect(convertedModels.first, model);
    });
  });

  group('tryConvertList', () {
    test('converts list $model to $TDto and back', () {
      final List<TDto?> dtos = dtoMapper.tryConvertList<TModel, TDto>(<TModel?>[
        model,
      ]);
      final List<TModel?> convertedModels = dtoMapper
          .tryConvertList<TDto, TModel>(dtos);
      expect(convertedModels.length, 1);
      expect(convertedModels.first, model);
    });
  });
}
