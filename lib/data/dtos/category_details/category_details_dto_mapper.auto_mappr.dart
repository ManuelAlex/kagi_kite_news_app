// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../domain/entities/category_details.dart' as _i3;
import '../../../domain/entities/value_objects/article.dart' as _i13;
import '../../../domain/entities/value_objects/category.dart' as _i5;
import '../../../domain/entities/value_objects/cluster.dart' as _i7;
import '../../../domain/entities/value_objects/domain.dart' as _i15;
import '../../../domain/entities/value_objects/on_this_day_event.dart' as _i17;
import '../../../domain/entities/value_objects/perspective.dart' as _i9;
import '../../../domain/entities/value_objects/source.dart' as _i11;
import '../value_objects/article/article_dto_1.dart' as _i12;
import '../value_objects/category/category_dto_1.dart' as _i4;
import '../value_objects/cluster/cluster_dto_1.dart' as _i6;
import '../value_objects/domain/domain_dto_1.dart' as _i14;
import '../value_objects/on_this_day_event/on_this_day_event_dto_1.dart'
    as _i16;
import '../value_objects/perspective/perspective_dto_1.dart' as _i8;
import '../value_objects/source/source_dto_1.dart' as _i10;
import 'category_details_dto_1.dart' as _i2;

/// {@template package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
/// Available mappings:
/// - `CategoryDetailsDto1` → `CategoryDetails`.
/// - `CategoryDetails` → `CategoryDetailsDto1`.
/// - `CategoryDto1` → `Category`.
/// - `Category` → `CategoryDto1`.
/// - `ClusterDto1` → `Cluster`.
/// - `Cluster` → `ClusterDto1`.
/// - `PerspectiveDto1` → `Perspective`.
/// - `Perspective` → `PerspectiveDto1`.
/// - `SourceDto1` → `Source`.
/// - `Source` → `SourceDto1`.
/// - `ArticleDto1` → `Article`.
/// - `Article` → `ArticleDto1`.
/// - `DomainDto1` → `Domain`.
/// - `Domain` → `DomainDto1`.
/// - `OnThisDayEventDto1` → `OnThisDayEvent`.
/// - `OnThisDayEvent` → `OnThisDayEventDto1`.
/// {@endtemplate}
class $CategoryDetailsDtoMapper implements _i1.AutoMapprInterface {
  const $CategoryDetailsDtoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CategoryDetailsDto1>() ||
            sourceTypeOf == _typeOf<_i2.CategoryDetailsDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.CategoryDetails>() ||
            targetTypeOf == _typeOf<_i3.CategoryDetails?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CategoryDetails>() ||
            sourceTypeOf == _typeOf<_i3.CategoryDetails?>()) &&
        (targetTypeOf == _typeOf<_i2.CategoryDetailsDto1>() ||
            targetTypeOf == _typeOf<_i2.CategoryDetailsDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CategoryDto1>() ||
            sourceTypeOf == _typeOf<_i4.CategoryDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Category>() ||
            targetTypeOf == _typeOf<_i5.Category?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.Category>() ||
            sourceTypeOf == _typeOf<_i5.Category?>()) &&
        (targetTypeOf == _typeOf<_i4.CategoryDto1>() ||
            targetTypeOf == _typeOf<_i4.CategoryDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.ClusterDto1>() ||
            sourceTypeOf == _typeOf<_i6.ClusterDto1?>()) &&
        (targetTypeOf == _typeOf<_i7.Cluster>() ||
            targetTypeOf == _typeOf<_i7.Cluster?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.Cluster>() ||
            sourceTypeOf == _typeOf<_i7.Cluster?>()) &&
        (targetTypeOf == _typeOf<_i6.ClusterDto1>() ||
            targetTypeOf == _typeOf<_i6.ClusterDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i8.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i9.Perspective>() ||
            targetTypeOf == _typeOf<_i9.Perspective?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.Perspective>() ||
            sourceTypeOf == _typeOf<_i9.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i8.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i8.PerspectiveDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i10.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i11.Source>() ||
            targetTypeOf == _typeOf<_i11.Source?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.Source>() ||
            sourceTypeOf == _typeOf<_i11.Source?>()) &&
        (targetTypeOf == _typeOf<_i10.SourceDto1>() ||
            targetTypeOf == _typeOf<_i10.SourceDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.ArticleDto1>() ||
            sourceTypeOf == _typeOf<_i12.ArticleDto1?>()) &&
        (targetTypeOf == _typeOf<_i13.Article>() ||
            targetTypeOf == _typeOf<_i13.Article?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.Article>() ||
            sourceTypeOf == _typeOf<_i13.Article?>()) &&
        (targetTypeOf == _typeOf<_i12.ArticleDto1>() ||
            targetTypeOf == _typeOf<_i12.ArticleDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.DomainDto1>() ||
            sourceTypeOf == _typeOf<_i14.DomainDto1?>()) &&
        (targetTypeOf == _typeOf<_i15.Domain>() ||
            targetTypeOf == _typeOf<_i15.Domain?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i15.Domain>() ||
            sourceTypeOf == _typeOf<_i15.Domain?>()) &&
        (targetTypeOf == _typeOf<_i14.DomainDto1>() ||
            targetTypeOf == _typeOf<_i14.DomainDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.OnThisDayEventDto1>() ||
            sourceTypeOf == _typeOf<_i16.OnThisDayEventDto1?>()) &&
        (targetTypeOf == _typeOf<_i17.OnThisDayEvent>() ||
            targetTypeOf == _typeOf<_i17.OnThisDayEvent?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i17.OnThisDayEvent>() ||
            sourceTypeOf == _typeOf<_i17.OnThisDayEvent?>()) &&
        (targetTypeOf == _typeOf<_i16.OnThisDayEventDto1>() ||
            targetTypeOf == _typeOf<_i16.OnThisDayEventDto1?>())) {
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.CategoryDetailsDto1>() ||
            sourceTypeOf == _typeOf<_i2.CategoryDetailsDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.CategoryDetails>() ||
            targetTypeOf == _typeOf<_i3.CategoryDetails?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CategoryDetailsDto1_To__i3$CategoryDetails(
            (model as _i2.CategoryDetailsDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CategoryDetails>() ||
            sourceTypeOf == _typeOf<_i3.CategoryDetails?>()) &&
        (targetTypeOf == _typeOf<_i2.CategoryDetailsDto1>() ||
            targetTypeOf == _typeOf<_i2.CategoryDetailsDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CategoryDetails_To__i2$CategoryDetailsDto1(
            (model as _i3.CategoryDetails?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CategoryDto1>() ||
            sourceTypeOf == _typeOf<_i4.CategoryDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Category>() ||
            targetTypeOf == _typeOf<_i5.Category?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CategoryDto1_To__i5$Category(
            (model as _i4.CategoryDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.Category>() ||
            sourceTypeOf == _typeOf<_i5.Category?>()) &&
        (targetTypeOf == _typeOf<_i4.CategoryDto1>() ||
            targetTypeOf == _typeOf<_i4.CategoryDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$Category_To__i4$CategoryDto1((model as _i5.Category?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.ClusterDto1>() ||
            sourceTypeOf == _typeOf<_i6.ClusterDto1?>()) &&
        (targetTypeOf == _typeOf<_i7.Cluster>() ||
            targetTypeOf == _typeOf<_i7.Cluster?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$ClusterDto1_To__i7$Cluster((model as _i6.ClusterDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.Cluster>() ||
            sourceTypeOf == _typeOf<_i7.Cluster?>()) &&
        (targetTypeOf == _typeOf<_i6.ClusterDto1>() ||
            targetTypeOf == _typeOf<_i6.ClusterDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$Cluster_To__i6$ClusterDto1((model as _i7.Cluster?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i8.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i9.Perspective>() ||
            targetTypeOf == _typeOf<_i9.Perspective?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$PerspectiveDto1_To__i9$Perspective(
            (model as _i8.PerspectiveDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.Perspective>() ||
            sourceTypeOf == _typeOf<_i9.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i8.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i8.PerspectiveDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$Perspective_To__i8$PerspectiveDto1(
            (model as _i9.Perspective?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i10.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i11.Source>() ||
            targetTypeOf == _typeOf<_i11.Source?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$SourceDto1_To__i11$Source((model as _i10.SourceDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.Source>() ||
            sourceTypeOf == _typeOf<_i11.Source?>()) &&
        (targetTypeOf == _typeOf<_i10.SourceDto1>() ||
            targetTypeOf == _typeOf<_i10.SourceDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$Source_To__i10$SourceDto1((model as _i11.Source?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.ArticleDto1>() ||
            sourceTypeOf == _typeOf<_i12.ArticleDto1?>()) &&
        (targetTypeOf == _typeOf<_i13.Article>() ||
            targetTypeOf == _typeOf<_i13.Article?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$ArticleDto1_To__i13$Article(
            (model as _i12.ArticleDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.Article>() ||
            sourceTypeOf == _typeOf<_i13.Article?>()) &&
        (targetTypeOf == _typeOf<_i12.ArticleDto1>() ||
            targetTypeOf == _typeOf<_i12.ArticleDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$Article_To__i12$ArticleDto1((model as _i13.Article?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.DomainDto1>() ||
            sourceTypeOf == _typeOf<_i14.DomainDto1?>()) &&
        (targetTypeOf == _typeOf<_i15.Domain>() ||
            targetTypeOf == _typeOf<_i15.Domain?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$DomainDto1_To__i15$Domain((model as _i14.DomainDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i15.Domain>() ||
            sourceTypeOf == _typeOf<_i15.Domain?>()) &&
        (targetTypeOf == _typeOf<_i14.DomainDto1>() ||
            targetTypeOf == _typeOf<_i14.DomainDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i15$Domain_To__i14$DomainDto1((model as _i15.Domain?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.OnThisDayEventDto1>() ||
            sourceTypeOf == _typeOf<_i16.OnThisDayEventDto1?>()) &&
        (targetTypeOf == _typeOf<_i17.OnThisDayEvent>() ||
            targetTypeOf == _typeOf<_i17.OnThisDayEvent?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$OnThisDayEventDto1_To__i17$OnThisDayEvent(
            (model as _i16.OnThisDayEventDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i17.OnThisDayEvent>() ||
            sourceTypeOf == _typeOf<_i17.OnThisDayEvent?>()) &&
        (targetTypeOf == _typeOf<_i16.OnThisDayEventDto1>() ||
            targetTypeOf == _typeOf<_i16.OnThisDayEventDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i17$OnThisDayEvent_To__i16$OnThisDayEventDto1(
            (model as _i17.OnThisDayEvent?),
          )
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
  /// {@macro package:kagi_kite_news_app/data/dtos/category_details/category_details_dto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.CategoryDetails _map__i2$CategoryDetailsDto1_To__i3$CategoryDetails(
    _i2.CategoryDetailsDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CategoryDetailsDto1 → CategoryDetails failed because CategoryDetailsDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CategoryDetailsDto1, CategoryDetails> to handle null values during mapping.',
      );
    }
    return _i3.CategoryDetails(
      timestamp: model.timestamp,
      category: model.category,
      read: model.read,
      clusters:
          model.clusters
              .map<_i7.Cluster>(
                (value) => _map__i6$ClusterDto1_To__i7$Cluster(value),
              )
              .toList(),
      events:
          model.events
              .map<_i17.OnThisDayEvent>(
                (value) =>
                    _map__i16$OnThisDayEventDto1_To__i17$OnThisDayEvent(value),
              )
              .toList(),
    );
  }

  _i2.CategoryDetailsDto1 _map__i3$CategoryDetails_To__i2$CategoryDetailsDto1(
    _i3.CategoryDetails? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CategoryDetails → CategoryDetailsDto1 failed because CategoryDetails was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CategoryDetails, CategoryDetailsDto1> to handle null values during mapping.',
      );
    }
    return _i2.CategoryDetailsDto1(
      timestamp: model.timestamp,
      category: model.category,
      read: model.read,
      clusters:
          model.clusters
              .map<_i6.ClusterDto1>(
                (value) => _map__i7$Cluster_To__i6$ClusterDto1(value),
              )
              .toList(),
      events:
          model.events
              .map<_i16.OnThisDayEventDto1>(
                (value) =>
                    _map__i17$OnThisDayEvent_To__i16$OnThisDayEventDto1(value),
              )
              .toList(),
    );
  }

  _i5.Category _map__i4$CategoryDto1_To__i5$Category(_i4.CategoryDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CategoryDto1 → Category failed because CategoryDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CategoryDto1, Category> to handle null values during mapping.',
      );
    }
    return _i5.Category(name: model.name, file: model.file);
  }

  _i4.CategoryDto1 _map__i5$Category_To__i4$CategoryDto1(_i5.Category? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Category → CategoryDto1 failed because Category was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Category, CategoryDto1> to handle null values during mapping.',
      );
    }
    return _i4.CategoryDto1(name: model.name, file: model.file);
  }

  _i7.Cluster _map__i6$ClusterDto1_To__i7$Cluster(_i6.ClusterDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping ClusterDto1 → Cluster failed because ClusterDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<ClusterDto1, Cluster> to handle null values during mapping.',
      );
    }
    return _i7.Cluster(
      isRead: model.isRead,
      clusterNumber: model.clusterNumber,
      uniqueDomains: model.uniqueDomains,
      numberOfTitles: model.numberOfTitles,
      category: model.category,
      title: model.title,
      shortSummary: model.shortSummary,
      didYouKnow: model.didYouKnow,
      talkingPoints: model.talkingPoints,
      quote: model.quote,
      quoteAuthor: model.quoteAuthor,
      quoteSourceUrl: model.quoteSourceUrl,
      quoteSourceDomain: model.quoteSourceDomain,
      location: model.location,
      perspectives:
          model.perspectives
              .map<_i9.Perspective>(
                (value) => _map__i8$PerspectiveDto1_To__i9$Perspective(value),
              )
              .toList(),
      emoji: model.emoji,
      geopoliticalContext: model.geopoliticalContext,
      historicalBackground: model.historicalBackground,
      internationalReactions: model.internationalReactions,
      humanitarianImpact: model.humanitarianImpact,
      economicImplications: model.economicImplications,
      timeline: model.timeline,
      futureOutlook: model.futureOutlook,
      keyPlayers: model.keyPlayers,
      technicalDetails: model.technicalDetails,
      businessAngleText: model.businessAngleText,
      businessAnglePoints: model.businessAnglePoints,
      userActionItems: model.userActionItems,
      scientificSignificance: model.scientificSignificance,
      travelAdvisory: model.travelAdvisory,
      destinationHighlights: model.destinationHighlights,
      culinarySignificance: model.culinarySignificance,
      performanceStatistics: model.performanceStatistics,
      leagueStandings: model.leagueStandings,
      diyTips: model.diyTips,
      designPrinciples: model.designPrinciples,
      userExperienceImpact: model.userExperienceImpact,
      gameplayMechanics: model.gameplayMechanics,
      industryImpact: model.industryImpact,
      technicalSpecifications: model.technicalSpecifications,
      articles:
          model.articles
              .map<_i13.Article>(
                (value) => _map__i12$ArticleDto1_To__i13$Article(value),
              )
              .toList(),
      domains:
          model.domains
              .map<_i15.Domain>(
                (value) => _map__i14$DomainDto1_To__i15$Domain(value),
              )
              .toList(),
    );
  }

  _i6.ClusterDto1 _map__i7$Cluster_To__i6$ClusterDto1(_i7.Cluster? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Cluster → ClusterDto1 failed because Cluster was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Cluster, ClusterDto1> to handle null values during mapping.',
      );
    }
    return _i6.ClusterDto1(
      isRead: model.isRead,
      clusterNumber: model.clusterNumber,
      uniqueDomains: model.uniqueDomains,
      numberOfTitles: model.numberOfTitles,
      category: model.category,
      title: model.title,
      shortSummary: model.shortSummary,
      didYouKnow: model.didYouKnow,
      talkingPoints: model.talkingPoints,
      quote: model.quote,
      quoteAuthor: model.quoteAuthor,
      quoteSourceUrl: model.quoteSourceUrl,
      quoteSourceDomain: model.quoteSourceDomain,
      location: model.location,
      perspectives:
          model.perspectives
              .map<_i8.PerspectiveDto1>(
                (value) => _map__i9$Perspective_To__i8$PerspectiveDto1(value),
              )
              .toList(),
      emoji: model.emoji,
      geopoliticalContext: model.geopoliticalContext,
      historicalBackground: model.historicalBackground,
      internationalReactions: model.internationalReactions,
      humanitarianImpact: model.humanitarianImpact,
      economicImplications: model.economicImplications,
      timeline: model.timeline,
      futureOutlook: model.futureOutlook,
      keyPlayers: model.keyPlayers,
      technicalDetails: model.technicalDetails,
      businessAngleText: model.businessAngleText,
      businessAnglePoints: model.businessAnglePoints,
      userActionItems: model.userActionItems,
      scientificSignificance: model.scientificSignificance,
      travelAdvisory: model.travelAdvisory,
      destinationHighlights: model.destinationHighlights,
      culinarySignificance: model.culinarySignificance,
      performanceStatistics: model.performanceStatistics,
      leagueStandings: model.leagueStandings,
      diyTips: model.diyTips,
      designPrinciples: model.designPrinciples,
      userExperienceImpact: model.userExperienceImpact,
      gameplayMechanics: model.gameplayMechanics,
      industryImpact: model.industryImpact,
      technicalSpecifications: model.technicalSpecifications,
      articles:
          model.articles
              .map<_i12.ArticleDto1>(
                (value) => _map__i13$Article_To__i12$ArticleDto1(value),
              )
              .toList(),
      domains:
          model.domains
              .map<_i14.DomainDto1>(
                (value) => _map__i15$Domain_To__i14$DomainDto1(value),
              )
              .toList(),
    );
  }

  _i9.Perspective _map__i8$PerspectiveDto1_To__i9$Perspective(
    _i8.PerspectiveDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping PerspectiveDto1 → Perspective failed because PerspectiveDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<PerspectiveDto1, Perspective> to handle null values during mapping.',
      );
    }
    return _i9.Perspective(
      text: model.text,
      sources:
          model.sources
              .map<_i11.Source>(
                (value) => _map__i10$SourceDto1_To__i11$Source(value),
              )
              .toList(),
    );
  }

  _i8.PerspectiveDto1 _map__i9$Perspective_To__i8$PerspectiveDto1(
    _i9.Perspective? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Perspective → PerspectiveDto1 failed because Perspective was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Perspective, PerspectiveDto1> to handle null values during mapping.',
      );
    }
    return _i8.PerspectiveDto1(
      text: model.text,
      sources:
          model.sources
              .map<_i10.SourceDto1>(
                (value) => _map__i11$Source_To__i10$SourceDto1(value),
              )
              .toList(),
    );
  }

  _i11.Source _map__i10$SourceDto1_To__i11$Source(_i10.SourceDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourceDto1 → Source failed because SourceDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourceDto1, Source> to handle null values during mapping.',
      );
    }
    return _i11.Source(name: model.name, url: model.url);
  }

  _i10.SourceDto1 _map__i11$Source_To__i10$SourceDto1(_i11.Source? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Source → SourceDto1 failed because Source was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Source, SourceDto1> to handle null values during mapping.',
      );
    }
    return _i10.SourceDto1(name: model.name, url: model.url);
  }

  _i13.Article _map__i12$ArticleDto1_To__i13$Article(_i12.ArticleDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping ArticleDto1 → Article failed because ArticleDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<ArticleDto1, Article> to handle null values during mapping.',
      );
    }
    return _i13.Article(
      title: model.title,
      link: model.link,
      domain: model.domain,
      date: model.date,
      image: model.image,
      imageCaption: model.imageCaption,
    );
  }

  _i12.ArticleDto1 _map__i13$Article_To__i12$ArticleDto1(_i13.Article? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Article → ArticleDto1 failed because Article was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Article, ArticleDto1> to handle null values during mapping.',
      );
    }
    return _i12.ArticleDto1(
      title: model.title,
      link: model.link,
      domain: model.domain,
      date: model.date,
      image: model.image,
      imageCaption: model.imageCaption,
    );
  }

  _i15.Domain _map__i14$DomainDto1_To__i15$Domain(_i14.DomainDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping DomainDto1 → Domain failed because DomainDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<DomainDto1, Domain> to handle null values during mapping.',
      );
    }
    return _i15.Domain(name: model.name, favicon: model.favicon);
  }

  _i14.DomainDto1 _map__i15$Domain_To__i14$DomainDto1(_i15.Domain? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Domain → DomainDto1 failed because Domain was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Domain, DomainDto1> to handle null values during mapping.',
      );
    }
    return _i14.DomainDto1(name: model.name, favicon: model.favicon);
  }

  _i17.OnThisDayEvent _map__i16$OnThisDayEventDto1_To__i17$OnThisDayEvent(
    _i16.OnThisDayEventDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping OnThisDayEventDto1 → OnThisDayEvent failed because OnThisDayEventDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<OnThisDayEventDto1, OnThisDayEvent> to handle null values during mapping.',
      );
    }
    return _i17.OnThisDayEvent(
      year: model.year,
      content: model.content,
      sortYear: model.sortYear,
      type: model.type,
    );
  }

  _i16.OnThisDayEventDto1 _map__i17$OnThisDayEvent_To__i16$OnThisDayEventDto1(
    _i17.OnThisDayEvent? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping OnThisDayEvent → OnThisDayEventDto1 failed because OnThisDayEvent was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<OnThisDayEvent, OnThisDayEventDto1> to handle null values during mapping.',
      );
    }
    return _i16.OnThisDayEventDto1(
      year: model.year,
      content: model.content,
      sortYear: model.sortYear,
      type: model.type,
    );
  }
}
