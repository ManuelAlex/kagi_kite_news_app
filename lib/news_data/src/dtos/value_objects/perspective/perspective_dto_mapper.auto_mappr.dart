// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../domain/value_objects/perspective.dart' as _i3;
import '../../../domain/value_objects/source.dart' as _i5;
import '../source.dart/source_dto_1.dart' as _i4;
import 'perspective_dto_1.dart' as _i2;

/// {@template package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
/// Available mappings:
/// - `PerspectiveDto1` → `Perspective`.
/// - `Perspective` → `PerspectiveDto1`.
/// - `SourceDto1` → `Source`.
/// - `Source` → `SourceDto1`.
/// {@endtemplate}
class $PerspectiveDtoMapper implements _i1.AutoMapprInterface {
  const $PerspectiveDtoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i2.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.Perspective>() ||
            targetTypeOf == _typeOf<_i3.Perspective?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.Perspective>() ||
            sourceTypeOf == _typeOf<_i3.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i2.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i2.PerspectiveDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i4.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Source>() ||
            targetTypeOf == _typeOf<_i5.Source?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.Source>() ||
            sourceTypeOf == _typeOf<_i5.Source?>()) &&
        (targetTypeOf == _typeOf<_i4.SourceDto1>() ||
            targetTypeOf == _typeOf<_i4.SourceDto1?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(model, onMappingError: onMappingError);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model, onMappingError: onMappingError);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
        (item) => _safeConvert(item, onMappingError: onMappingError),
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i2.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.Perspective>() ||
            targetTypeOf == _typeOf<_i3.Perspective?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PerspectiveDto1_To__i3$Perspective(
            (model as _i2.PerspectiveDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.Perspective>() ||
            sourceTypeOf == _typeOf<_i3.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i2.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i2.PerspectiveDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$Perspective_To__i2$PerspectiveDto1(
            (model as _i3.Perspective?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i4.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Source>() ||
            targetTypeOf == _typeOf<_i5.Source?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$SourceDto1_To__i5$Source((model as _i4.SourceDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.Source>() ||
            sourceTypeOf == _typeOf<_i5.Source?>()) &&
        (targetTypeOf == _typeOf<_i4.SourceDto1>() ||
            targetTypeOf == _typeOf<_i4.SourceDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$Source_To__i4$SourceDto1((model as _i5.Source?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(model, canReturnNull: true);
    }
    try {
      return _convert(model, canReturnNull: true);
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:kagi_kite_news_app/news_data/src/dtos/value_objects/perspective/perspective_dto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Perspective _map__i2$PerspectiveDto1_To__i3$Perspective(
    _i2.PerspectiveDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping PerspectiveDto1 → Perspective failed because PerspectiveDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<PerspectiveDto1, Perspective> to handle null values during mapping.',
      );
    }
    return _i3.Perspective(
      text: model.text,
      sources:
          model.sources
              .map<_i5.Source>(
                (value) => _map__i4$SourceDto1_To__i5$Source(value),
              )
              .toList(),
    );
  }

  _i2.PerspectiveDto1 _map__i3$Perspective_To__i2$PerspectiveDto1(
    _i3.Perspective? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Perspective → PerspectiveDto1 failed because Perspective was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Perspective, PerspectiveDto1> to handle null values during mapping.',
      );
    }
    return _i2.PerspectiveDto1(
      text: model.text,
      sources:
          model.sources
              .map<_i4.SourceDto1>(
                (value) => _map__i5$Source_To__i4$SourceDto1(value),
              )
              .toList(),
    );
  }

  _i5.Source _map__i4$SourceDto1_To__i5$Source(_i4.SourceDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourceDto1 → Source failed because SourceDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourceDto1, Source> to handle null values during mapping.',
      );
    }
    return _i5.Source(name: model.name, url: model.url);
  }

  _i4.SourceDto1 _map__i5$Source_To__i4$SourceDto1(_i5.Source? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Source → SourceDto1 failed because Source was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Source, SourceDto1> to handle null values during mapping.',
      );
    }
    return _i4.SourceDto1(name: model.name, url: model.url);
  }
}
