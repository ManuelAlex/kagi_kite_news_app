// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../../domain/entities/value_objects/article.dart' as _i9;
import '../../../../domain/entities/value_objects/cluster.dart' as _i3;
import '../../../../domain/entities/value_objects/domain.dart' as _i11;
import '../../../../domain/entities/value_objects/perspective.dart' as _i5;
import '../../../../domain/entities/value_objects/source.dart' as _i7;
import '../../../../domain/entities/value_objects/timeline.dart' as _i13;
import '../article/article_dto_1.dart' as _i8;
import '../domain/domain_dto_1.dart' as _i10;
import '../perspective/perspective_dto_1.dart' as _i4;
import '../source/source_dto_1.dart' as _i6;
import '../timeline/timeline_dto_1.dart' as _i12;
import 'cluster_dto_1.dart' as _i2;

/// {@template package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
/// Available mappings:
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
/// - `TimelineDto1` → `Timeline`.
/// - `Timeline` → `TimelineDto1`.
/// {@endtemplate}
class $ClusterDtoMapper implements _i1.AutoMapprInterface {
  const $ClusterDtoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ClusterDto1>() ||
            sourceTypeOf == _typeOf<_i2.ClusterDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.Cluster>() ||
            targetTypeOf == _typeOf<_i3.Cluster?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.Cluster>() ||
            sourceTypeOf == _typeOf<_i3.Cluster?>()) &&
        (targetTypeOf == _typeOf<_i2.ClusterDto1>() ||
            targetTypeOf == _typeOf<_i2.ClusterDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i4.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Perspective>() ||
            targetTypeOf == _typeOf<_i5.Perspective?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.Perspective>() ||
            sourceTypeOf == _typeOf<_i5.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i4.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i4.PerspectiveDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i6.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i7.Source>() ||
            targetTypeOf == _typeOf<_i7.Source?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.Source>() ||
            sourceTypeOf == _typeOf<_i7.Source?>()) &&
        (targetTypeOf == _typeOf<_i6.SourceDto1>() ||
            targetTypeOf == _typeOf<_i6.SourceDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.ArticleDto1>() ||
            sourceTypeOf == _typeOf<_i8.ArticleDto1?>()) &&
        (targetTypeOf == _typeOf<_i9.Article>() ||
            targetTypeOf == _typeOf<_i9.Article?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i9.Article>() ||
            sourceTypeOf == _typeOf<_i9.Article?>()) &&
        (targetTypeOf == _typeOf<_i8.ArticleDto1>() ||
            targetTypeOf == _typeOf<_i8.ArticleDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.DomainDto1>() ||
            sourceTypeOf == _typeOf<_i10.DomainDto1?>()) &&
        (targetTypeOf == _typeOf<_i11.Domain>() ||
            targetTypeOf == _typeOf<_i11.Domain?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i11.Domain>() ||
            sourceTypeOf == _typeOf<_i11.Domain?>()) &&
        (targetTypeOf == _typeOf<_i10.DomainDto1>() ||
            targetTypeOf == _typeOf<_i10.DomainDto1?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.TimelineDto1>() ||
            sourceTypeOf == _typeOf<_i12.TimelineDto1?>()) &&
        (targetTypeOf == _typeOf<_i13.Timeline>() ||
            targetTypeOf == _typeOf<_i13.Timeline?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i13.Timeline>() ||
            sourceTypeOf == _typeOf<_i13.Timeline?>()) &&
        (targetTypeOf == _typeOf<_i12.TimelineDto1>() ||
            targetTypeOf == _typeOf<_i12.TimelineDto1?>())) {
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.ClusterDto1>() ||
            sourceTypeOf == _typeOf<_i2.ClusterDto1?>()) &&
        (targetTypeOf == _typeOf<_i3.Cluster>() ||
            targetTypeOf == _typeOf<_i3.Cluster?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ClusterDto1_To__i3$Cluster((model as _i2.ClusterDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.Cluster>() ||
            sourceTypeOf == _typeOf<_i3.Cluster?>()) &&
        (targetTypeOf == _typeOf<_i2.ClusterDto1>() ||
            targetTypeOf == _typeOf<_i2.ClusterDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$Cluster_To__i2$ClusterDto1((model as _i3.Cluster?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PerspectiveDto1>() ||
            sourceTypeOf == _typeOf<_i4.PerspectiveDto1?>()) &&
        (targetTypeOf == _typeOf<_i5.Perspective>() ||
            targetTypeOf == _typeOf<_i5.Perspective?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PerspectiveDto1_To__i5$Perspective(
            (model as _i4.PerspectiveDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.Perspective>() ||
            sourceTypeOf == _typeOf<_i5.Perspective?>()) &&
        (targetTypeOf == _typeOf<_i4.PerspectiveDto1>() ||
            targetTypeOf == _typeOf<_i4.PerspectiveDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$Perspective_To__i4$PerspectiveDto1(
            (model as _i5.Perspective?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.SourceDto1>() ||
            sourceTypeOf == _typeOf<_i6.SourceDto1?>()) &&
        (targetTypeOf == _typeOf<_i7.Source>() ||
            targetTypeOf == _typeOf<_i7.Source?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$SourceDto1_To__i7$Source((model as _i6.SourceDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.Source>() ||
            sourceTypeOf == _typeOf<_i7.Source?>()) &&
        (targetTypeOf == _typeOf<_i6.SourceDto1>() ||
            targetTypeOf == _typeOf<_i6.SourceDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$Source_To__i6$SourceDto1((model as _i7.Source?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.ArticleDto1>() ||
            sourceTypeOf == _typeOf<_i8.ArticleDto1?>()) &&
        (targetTypeOf == _typeOf<_i9.Article>() ||
            targetTypeOf == _typeOf<_i9.Article?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$ArticleDto1_To__i9$Article((model as _i8.ArticleDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i9.Article>() ||
            sourceTypeOf == _typeOf<_i9.Article?>()) &&
        (targetTypeOf == _typeOf<_i8.ArticleDto1>() ||
            targetTypeOf == _typeOf<_i8.ArticleDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i9$Article_To__i8$ArticleDto1((model as _i9.Article?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.DomainDto1>() ||
            sourceTypeOf == _typeOf<_i10.DomainDto1?>()) &&
        (targetTypeOf == _typeOf<_i11.Domain>() ||
            targetTypeOf == _typeOf<_i11.Domain?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$DomainDto1_To__i11$Domain((model as _i10.DomainDto1?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i11.Domain>() ||
            sourceTypeOf == _typeOf<_i11.Domain?>()) &&
        (targetTypeOf == _typeOf<_i10.DomainDto1>() ||
            targetTypeOf == _typeOf<_i10.DomainDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i11$Domain_To__i10$DomainDto1((model as _i11.Domain?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.TimelineDto1>() ||
            sourceTypeOf == _typeOf<_i12.TimelineDto1?>()) &&
        (targetTypeOf == _typeOf<_i13.Timeline>() ||
            targetTypeOf == _typeOf<_i13.Timeline?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$TimelineDto1_To__i13$Timeline(
            (model as _i12.TimelineDto1?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i13.Timeline>() ||
            sourceTypeOf == _typeOf<_i13.Timeline?>()) &&
        (targetTypeOf == _typeOf<_i12.TimelineDto1>() ||
            targetTypeOf == _typeOf<_i12.TimelineDto1?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i13$Timeline_To__i12$TimelineDto1((model as _i13.Timeline?))
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
  /// {@macro package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Cluster _map__i2$ClusterDto1_To__i3$Cluster(_i2.ClusterDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping ClusterDto1 → Cluster failed because ClusterDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<ClusterDto1, Cluster> to handle null values during mapping.',
      );
    }
    return _i3.Cluster(
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
              .map<_i5.Perspective>(
                (value) => _map__i4$PerspectiveDto1_To__i5$Perspective(value),
              )
              .toList(),
      emoji: model.emoji,
      geopoliticalContext: model.geopoliticalContext,
      historicalBackground: model.historicalBackground,
      internationalReactions: model.internationalReactions,
      humanitarianImpact: model.humanitarianImpact,
      economicImplications: model.economicImplications,
      timeline:
          model.timeline
              .map<_i13.Timeline>(
                (value) => _map__i12$TimelineDto1_To__i13$Timeline(value),
              )
              .toList(),
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
              .map<_i9.Article>(
                (value) => _map__i8$ArticleDto1_To__i9$Article(value),
              )
              .toList(),
      domains:
          model.domains
              .map<_i11.Domain>(
                (value) => _map__i10$DomainDto1_To__i11$Domain(value),
              )
              .toList(),
    );
  }

  _i2.ClusterDto1 _map__i3$Cluster_To__i2$ClusterDto1(_i3.Cluster? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Cluster → ClusterDto1 failed because Cluster was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Cluster, ClusterDto1> to handle null values during mapping.',
      );
    }
    return _i2.ClusterDto1(
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
              .map<_i4.PerspectiveDto1>(
                (value) => _map__i5$Perspective_To__i4$PerspectiveDto1(value),
              )
              .toList(),
      emoji: model.emoji,
      geopoliticalContext: model.geopoliticalContext,
      historicalBackground: model.historicalBackground,
      internationalReactions: model.internationalReactions,
      humanitarianImpact: model.humanitarianImpact,
      economicImplications: model.economicImplications,
      timeline:
          model.timeline
              .map<_i12.TimelineDto1>(
                (value) => _map__i13$Timeline_To__i12$TimelineDto1(value),
              )
              .toList(),
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
              .map<_i8.ArticleDto1>(
                (value) => _map__i9$Article_To__i8$ArticleDto1(value),
              )
              .toList(),
      domains:
          model.domains
              .map<_i10.DomainDto1>(
                (value) => _map__i11$Domain_To__i10$DomainDto1(value),
              )
              .toList(),
    );
  }

  _i5.Perspective _map__i4$PerspectiveDto1_To__i5$Perspective(
    _i4.PerspectiveDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping PerspectiveDto1 → Perspective failed because PerspectiveDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<PerspectiveDto1, Perspective> to handle null values during mapping.',
      );
    }
    return _i5.Perspective(
      text: model.text,
      sources:
          model.sources
              .map<_i7.Source>(
                (value) => _map__i6$SourceDto1_To__i7$Source(value),
              )
              .toList(),
    );
  }

  _i4.PerspectiveDto1 _map__i5$Perspective_To__i4$PerspectiveDto1(
    _i5.Perspective? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Perspective → PerspectiveDto1 failed because Perspective was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Perspective, PerspectiveDto1> to handle null values during mapping.',
      );
    }
    return _i4.PerspectiveDto1(
      text: model.text,
      sources:
          model.sources
              .map<_i6.SourceDto1>(
                (value) => _map__i7$Source_To__i6$SourceDto1(value),
              )
              .toList(),
    );
  }

  _i7.Source _map__i6$SourceDto1_To__i7$Source(_i6.SourceDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping SourceDto1 → Source failed because SourceDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<SourceDto1, Source> to handle null values during mapping.',
      );
    }
    return _i7.Source(name: model.name, url: model.url);
  }

  _i6.SourceDto1 _map__i7$Source_To__i6$SourceDto1(_i7.Source? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Source → SourceDto1 failed because Source was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Source, SourceDto1> to handle null values during mapping.',
      );
    }
    return _i6.SourceDto1(name: model.name, url: model.url);
  }

  _i9.Article _map__i8$ArticleDto1_To__i9$Article(_i8.ArticleDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping ArticleDto1 → Article failed because ArticleDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<ArticleDto1, Article> to handle null values during mapping.',
      );
    }
    return _i9.Article(
      title: model.title,
      link: model.link,
      domain: model.domain,
      date: model.date,
      image: model.image,
      imageCaption: model.imageCaption,
    );
  }

  _i8.ArticleDto1 _map__i9$Article_To__i8$ArticleDto1(_i9.Article? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Article → ArticleDto1 failed because Article was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Article, ArticleDto1> to handle null values during mapping.',
      );
    }
    return _i8.ArticleDto1(
      title: model.title,
      link: model.link,
      domain: model.domain,
      date: model.date,
      image: model.image,
      imageCaption: model.imageCaption,
    );
  }

  _i11.Domain _map__i10$DomainDto1_To__i11$Domain(_i10.DomainDto1? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping DomainDto1 → Domain failed because DomainDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<DomainDto1, Domain> to handle null values during mapping.',
      );
    }
    return _i11.Domain(name: model.name, favicon: model.favicon);
  }

  _i10.DomainDto1 _map__i11$Domain_To__i10$DomainDto1(_i11.Domain? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Domain → DomainDto1 failed because Domain was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Domain, DomainDto1> to handle null values during mapping.',
      );
    }
    return _i10.DomainDto1(name: model.name, favicon: model.favicon);
  }

  _i13.Timeline _map__i12$TimelineDto1_To__i13$Timeline(
    _i12.TimelineDto1? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping TimelineDto1 → Timeline failed because TimelineDto1 was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<TimelineDto1, Timeline> to handle null values during mapping.',
      );
    }
    return _i13.Timeline(date: model.date, content: model.content);
  }

  _i12.TimelineDto1 _map__i13$Timeline_To__i12$TimelineDto1(
    _i13.Timeline? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Timeline → TimelineDto1 failed because Timeline was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Timeline, TimelineDto1> to handle null values during mapping.',
      );
    }
    return _i12.TimelineDto1(date: model.date, content: model.content);
  }
}
