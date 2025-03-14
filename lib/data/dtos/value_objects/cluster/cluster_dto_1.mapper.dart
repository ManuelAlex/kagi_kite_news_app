// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cluster_dto_1.dart';

class ClusterDto1Mapper extends ClassMapperBase<ClusterDto1> {
  ClusterDto1Mapper._();

  static ClusterDto1Mapper? _instance;
  static ClusterDto1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClusterDto1Mapper._());
      MapperContainer.globals.useAll(<MapperBase<Object>>[
        ListOrSingleJsonMapper<String>(),
      ]);
      PerspectiveDto1Mapper.ensureInitialized();
      ArticleDto1Mapper.ensureInitialized();
      DomainDto1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClusterDto1';

  static int _$clusterNumber(ClusterDto1 v) => v.clusterNumber;
  static const Field<ClusterDto1, int> _f$clusterNumber = Field(
    'clusterNumber',
    _$clusterNumber,
    key: r'cluster_number',
  );
  static int _$uniqueDomains(ClusterDto1 v) => v.uniqueDomains;
  static const Field<ClusterDto1, int> _f$uniqueDomains = Field(
    'uniqueDomains',
    _$uniqueDomains,
    key: r'unique_domains',
  );
  static int _$numberOfTitles(ClusterDto1 v) => v.numberOfTitles;
  static const Field<ClusterDto1, int> _f$numberOfTitles = Field(
    'numberOfTitles',
    _$numberOfTitles,
    key: r'number_of_titles',
  );
  static String _$category(ClusterDto1 v) => v.category;
  static const Field<ClusterDto1, String> _f$category = Field(
    'category',
    _$category,
  );
  static String _$title(ClusterDto1 v) => v.title;
  static const Field<ClusterDto1, String> _f$title = Field('title', _$title);
  static String _$shortSummary(ClusterDto1 v) => v.shortSummary;
  static const Field<ClusterDto1, String> _f$shortSummary = Field(
    'shortSummary',
    _$shortSummary,
    key: r'short_summary',
  );
  static String _$didYouKnow(ClusterDto1 v) => v.didYouKnow;
  static const Field<ClusterDto1, String> _f$didYouKnow = Field(
    'didYouKnow',
    _$didYouKnow,
    key: r'did_you_know',
  );
  static List<String> _$talkingPoints(ClusterDto1 v) => v.talkingPoints;
  static const Field<ClusterDto1, List<String>> _f$talkingPoints = Field(
    'talkingPoints',
    _$talkingPoints,
    key: r'talking_points',
  );
  static String _$quote(ClusterDto1 v) => v.quote;
  static const Field<ClusterDto1, String> _f$quote = Field('quote', _$quote);
  static String _$quoteAuthor(ClusterDto1 v) => v.quoteAuthor;
  static const Field<ClusterDto1, String> _f$quoteAuthor = Field(
    'quoteAuthor',
    _$quoteAuthor,
    key: r'quote_author',
  );
  static String _$quoteSourceUrl(ClusterDto1 v) => v.quoteSourceUrl;
  static const Field<ClusterDto1, String> _f$quoteSourceUrl = Field(
    'quoteSourceUrl',
    _$quoteSourceUrl,
    key: r'quote_source_url',
  );
  static String _$quoteSourceDomain(ClusterDto1 v) => v.quoteSourceDomain;
  static const Field<ClusterDto1, String> _f$quoteSourceDomain = Field(
    'quoteSourceDomain',
    _$quoteSourceDomain,
    key: r'quote_source_domain',
  );
  static String _$location(ClusterDto1 v) => v.location;
  static const Field<ClusterDto1, String> _f$location = Field(
    'location',
    _$location,
  );
  static List<PerspectiveDto1> _$perspectives(ClusterDto1 v) => v.perspectives;
  static const Field<ClusterDto1, List<PerspectiveDto1>> _f$perspectives =
      Field('perspectives', _$perspectives);
  static String _$emoji(ClusterDto1 v) => v.emoji;
  static const Field<ClusterDto1, String> _f$emoji = Field('emoji', _$emoji);
  static String _$geopoliticalContext(ClusterDto1 v) => v.geopoliticalContext;
  static const Field<ClusterDto1, String> _f$geopoliticalContext = Field(
    'geopoliticalContext',
    _$geopoliticalContext,
    key: r'geopolitical_context',
  );
  static String _$historicalBackground(ClusterDto1 v) => v.historicalBackground;
  static const Field<ClusterDto1, String> _f$historicalBackground = Field(
    'historicalBackground',
    _$historicalBackground,
    key: r'historical_background',
  );
  static List<String> _$internationalReactions(ClusterDto1 v) =>
      v.internationalReactions;
  static const Field<ClusterDto1, List<String>> _f$internationalReactions =
      Field(
        'internationalReactions',
        _$internationalReactions,
        key: r'international_reactions',
        hook: ListOrSingleHook<String>(),
      );
  static String _$humanitarianImpact(ClusterDto1 v) => v.humanitarianImpact;
  static const Field<ClusterDto1, String> _f$humanitarianImpact = Field(
    'humanitarianImpact',
    _$humanitarianImpact,
    key: r'humanitarian_impact',
  );
  static String _$economicImplications(ClusterDto1 v) => v.economicImplications;
  static const Field<ClusterDto1, String> _f$economicImplications = Field(
    'economicImplications',
    _$economicImplications,
    key: r'economic_implications',
  );
  static List<String> _$timeline(ClusterDto1 v) => v.timeline;
  static const Field<ClusterDto1, List<String>> _f$timeline = Field(
    'timeline',
    _$timeline,
    hook: ListOrSingleHook<String>(),
  );
  static String _$futureOutlook(ClusterDto1 v) => v.futureOutlook;
  static const Field<ClusterDto1, String> _f$futureOutlook = Field(
    'futureOutlook',
    _$futureOutlook,
    key: r'future_outlook',
    hook: ListOrSingleHook<String>(),
  );
  static List<String> _$keyPlayers(ClusterDto1 v) => v.keyPlayers;
  static const Field<ClusterDto1, List<String>> _f$keyPlayers = Field(
    'keyPlayers',
    _$keyPlayers,
    key: r'key_players',
    hook: ListOrSingleHook<String>(),
  );
  static String _$technicalDetails(ClusterDto1 v) => v.technicalDetails;
  static const Field<ClusterDto1, String> _f$technicalDetails = Field(
    'technicalDetails',
    _$technicalDetails,
    key: r'technical_details',
  );
  static String _$businessAngleText(ClusterDto1 v) => v.businessAngleText;
  static const Field<ClusterDto1, String> _f$businessAngleText = Field(
    'businessAngleText',
    _$businessAngleText,
    key: r'business_angle_text',
  );
  static List<String> _$businessAnglePoints(ClusterDto1 v) =>
      v.businessAnglePoints;
  static const Field<ClusterDto1, List<String>> _f$businessAnglePoints = Field(
    'businessAnglePoints',
    _$businessAnglePoints,
    key: r'business_angle_points',
    hook: ListOrSingleHook<String>(),
  );
  static List<String> _$userActionItems(ClusterDto1 v) => v.userActionItems;
  static const Field<ClusterDto1, List<String>> _f$userActionItems = Field(
    'userActionItems',
    _$userActionItems,
    key: r'user_action_items',
    hook: ListOrSingleHook<String>(),
  );
  static List<String> _$scientificSignificance(ClusterDto1 v) =>
      v.scientificSignificance;
  static const Field<ClusterDto1, List<String>> _f$scientificSignificance =
      Field(
        'scientificSignificance',
        _$scientificSignificance,
        key: r'scientific_significance',
        hook: ListOrSingleHook<String>(),
      );
  static List<String> _$travelAdvisory(ClusterDto1 v) => v.travelAdvisory;
  static const Field<ClusterDto1, List<String>> _f$travelAdvisory = Field(
    'travelAdvisory',
    _$travelAdvisory,
    key: r'travel_advisory',
    hook: ListOrSingleHook<String>(),
  );
  static String _$destinationHighlights(ClusterDto1 v) =>
      v.destinationHighlights;
  static const Field<ClusterDto1, String> _f$destinationHighlights = Field(
    'destinationHighlights',
    _$destinationHighlights,
    key: r'destination_highlights',
    hook: ListOrSingleHook<String>(),
  );
  static String _$culinarySignificance(ClusterDto1 v) => v.culinarySignificance;
  static const Field<ClusterDto1, String> _f$culinarySignificance = Field(
    'culinarySignificance',
    _$culinarySignificance,
    key: r'culinary_significance',
  );
  static List<String> _$performanceStatistics(ClusterDto1 v) =>
      v.performanceStatistics;
  static const Field<ClusterDto1, List<String>> _f$performanceStatistics =
      Field(
        'performanceStatistics',
        _$performanceStatistics,
        key: r'performance_statistics',
        hook: ListOrSingleHook<String>(),
      );
  static String _$leagueStandings(ClusterDto1 v) => v.leagueStandings;
  static const Field<ClusterDto1, String> _f$leagueStandings = Field(
    'leagueStandings',
    _$leagueStandings,
    key: r'league_standings',
    hook: ListOrSingleHook<String>(),
  );
  static String _$diyTips(ClusterDto1 v) => v.diyTips;
  static const Field<ClusterDto1, String> _f$diyTips = Field(
    'diyTips',
    _$diyTips,
    key: r'diy_tips',
  );
  static String _$designPrinciples(ClusterDto1 v) => v.designPrinciples;
  static const Field<ClusterDto1, String> _f$designPrinciples = Field(
    'designPrinciples',
    _$designPrinciples,
    key: r'design_principles',
  );
  static String _$userExperienceImpact(ClusterDto1 v) => v.userExperienceImpact;
  static const Field<ClusterDto1, String> _f$userExperienceImpact = Field(
    'userExperienceImpact',
    _$userExperienceImpact,
    key: r'user_experience_impact',
  );
  static List<String> _$gameplayMechanics(ClusterDto1 v) => v.gameplayMechanics;
  static const Field<ClusterDto1, List<String>> _f$gameplayMechanics = Field(
    'gameplayMechanics',
    _$gameplayMechanics,
    key: r'gameplay_mechanics',
    hook: ListOrSingleHook<String>(),
  );
  static List<String> _$industryImpact(ClusterDto1 v) => v.industryImpact;
  static const Field<ClusterDto1, List<String>> _f$industryImpact = Field(
    'industryImpact',
    _$industryImpact,
    key: r'industry_impact',
    hook: ListOrSingleHook<String>(),
  );
  static String _$technicalSpecifications(ClusterDto1 v) =>
      v.technicalSpecifications;
  static const Field<ClusterDto1, String> _f$technicalSpecifications = Field(
    'technicalSpecifications',
    _$technicalSpecifications,
    key: r'technical_specifications',
    hook: ListOrSingleHook<String>(),
  );
  static List<ArticleDto1> _$articles(ClusterDto1 v) => v.articles;
  static const Field<ClusterDto1, List<ArticleDto1>> _f$articles = Field(
    'articles',
    _$articles,
  );
  static List<DomainDto1> _$domains(ClusterDto1 v) => v.domains;
  static const Field<ClusterDto1, List<DomainDto1>> _f$domains = Field(
    'domains',
    _$domains,
  );

  @override
  final MappableFields<ClusterDto1> fields = const {
    #clusterNumber: _f$clusterNumber,
    #uniqueDomains: _f$uniqueDomains,
    #numberOfTitles: _f$numberOfTitles,
    #category: _f$category,
    #title: _f$title,
    #shortSummary: _f$shortSummary,
    #didYouKnow: _f$didYouKnow,
    #talkingPoints: _f$talkingPoints,
    #quote: _f$quote,
    #quoteAuthor: _f$quoteAuthor,
    #quoteSourceUrl: _f$quoteSourceUrl,
    #quoteSourceDomain: _f$quoteSourceDomain,
    #location: _f$location,
    #perspectives: _f$perspectives,
    #emoji: _f$emoji,
    #geopoliticalContext: _f$geopoliticalContext,
    #historicalBackground: _f$historicalBackground,
    #internationalReactions: _f$internationalReactions,
    #humanitarianImpact: _f$humanitarianImpact,
    #economicImplications: _f$economicImplications,
    #timeline: _f$timeline,
    #futureOutlook: _f$futureOutlook,
    #keyPlayers: _f$keyPlayers,
    #technicalDetails: _f$technicalDetails,
    #businessAngleText: _f$businessAngleText,
    #businessAnglePoints: _f$businessAnglePoints,
    #userActionItems: _f$userActionItems,
    #scientificSignificance: _f$scientificSignificance,
    #travelAdvisory: _f$travelAdvisory,
    #destinationHighlights: _f$destinationHighlights,
    #culinarySignificance: _f$culinarySignificance,
    #performanceStatistics: _f$performanceStatistics,
    #leagueStandings: _f$leagueStandings,
    #diyTips: _f$diyTips,
    #designPrinciples: _f$designPrinciples,
    #userExperienceImpact: _f$userExperienceImpact,
    #gameplayMechanics: _f$gameplayMechanics,
    #industryImpact: _f$industryImpact,
    #technicalSpecifications: _f$technicalSpecifications,
    #articles: _f$articles,
    #domains: _f$domains,
  };

  static ClusterDto1 _instantiate(DecodingData data) {
    return ClusterDto1(
      clusterNumber: data.dec(_f$clusterNumber),
      uniqueDomains: data.dec(_f$uniqueDomains),
      numberOfTitles: data.dec(_f$numberOfTitles),
      category: data.dec(_f$category),
      title: data.dec(_f$title),
      shortSummary: data.dec(_f$shortSummary),
      didYouKnow: data.dec(_f$didYouKnow),
      talkingPoints: data.dec(_f$talkingPoints),
      quote: data.dec(_f$quote),
      quoteAuthor: data.dec(_f$quoteAuthor),
      quoteSourceUrl: data.dec(_f$quoteSourceUrl),
      quoteSourceDomain: data.dec(_f$quoteSourceDomain),
      location: data.dec(_f$location),
      perspectives: data.dec(_f$perspectives),
      emoji: data.dec(_f$emoji),
      geopoliticalContext: data.dec(_f$geopoliticalContext),
      historicalBackground: data.dec(_f$historicalBackground),
      internationalReactions: data.dec(_f$internationalReactions),
      humanitarianImpact: data.dec(_f$humanitarianImpact),
      economicImplications: data.dec(_f$economicImplications),
      timeline: data.dec(_f$timeline),
      futureOutlook: data.dec(_f$futureOutlook),
      keyPlayers: data.dec(_f$keyPlayers),
      technicalDetails: data.dec(_f$technicalDetails),
      businessAngleText: data.dec(_f$businessAngleText),
      businessAnglePoints: data.dec(_f$businessAnglePoints),
      userActionItems: data.dec(_f$userActionItems),
      scientificSignificance: data.dec(_f$scientificSignificance),
      travelAdvisory: data.dec(_f$travelAdvisory),
      destinationHighlights: data.dec(_f$destinationHighlights),
      culinarySignificance: data.dec(_f$culinarySignificance),
      performanceStatistics: data.dec(_f$performanceStatistics),
      leagueStandings: data.dec(_f$leagueStandings),
      diyTips: data.dec(_f$diyTips),
      designPrinciples: data.dec(_f$designPrinciples),
      userExperienceImpact: data.dec(_f$userExperienceImpact),
      gameplayMechanics: data.dec(_f$gameplayMechanics),
      industryImpact: data.dec(_f$industryImpact),
      technicalSpecifications: data.dec(_f$technicalSpecifications),
      articles: data.dec(_f$articles),
      domains: data.dec(_f$domains),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ClusterDto1 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClusterDto1>(map);
  }

  static ClusterDto1 fromJson(String json) {
    return ensureInitialized().decodeJson<ClusterDto1>(json);
  }
}

mixin ClusterDto1Mappable {
  String toJson() {
    return ClusterDto1Mapper.ensureInitialized().encodeJson<ClusterDto1>(
      this as ClusterDto1,
    );
  }

  Map<String, dynamic> toMap() {
    return ClusterDto1Mapper.ensureInitialized().encodeMap<ClusterDto1>(
      this as ClusterDto1,
    );
  }

  ClusterDto1CopyWith<ClusterDto1, ClusterDto1, ClusterDto1> get copyWith =>
      _ClusterDto1CopyWithImpl(this as ClusterDto1, $identity, $identity);
  @override
  String toString() {
    return ClusterDto1Mapper.ensureInitialized().stringifyValue(
      this as ClusterDto1,
    );
  }

  @override
  bool operator ==(Object other) {
    return ClusterDto1Mapper.ensureInitialized().equalsValue(
      this as ClusterDto1,
      other,
    );
  }

  @override
  int get hashCode {
    return ClusterDto1Mapper.ensureInitialized().hashValue(this as ClusterDto1);
  }
}

extension ClusterDto1ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClusterDto1, $Out> {
  ClusterDto1CopyWith<$R, ClusterDto1, $Out> get $asClusterDto1 =>
      $base.as((v, t, t2) => _ClusterDto1CopyWithImpl(v, t, t2));
}

abstract class ClusterDto1CopyWith<$R, $In extends ClusterDto1, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get talkingPoints;
  ListCopyWith<
    $R,
    PerspectiveDto1,
    PerspectiveDto1CopyWith<$R, PerspectiveDto1, PerspectiveDto1>
  >
  get perspectives;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get internationalReactions;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeline;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get keyPlayers;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get businessAnglePoints;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get userActionItems;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get scientificSignificance;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get travelAdvisory;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get performanceStatistics;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get gameplayMechanics;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get industryImpact;
  ListCopyWith<
    $R,
    ArticleDto1,
    ArticleDto1CopyWith<$R, ArticleDto1, ArticleDto1>
  >
  get articles;
  ListCopyWith<$R, DomainDto1, DomainDto1CopyWith<$R, DomainDto1, DomainDto1>>
  get domains;
  $R call({
    int? clusterNumber,
    int? uniqueDomains,
    int? numberOfTitles,
    String? category,
    String? title,
    String? shortSummary,
    String? didYouKnow,
    List<String>? talkingPoints,
    String? quote,
    String? quoteAuthor,
    String? quoteSourceUrl,
    String? quoteSourceDomain,
    String? location,
    List<PerspectiveDto1>? perspectives,
    String? emoji,
    String? geopoliticalContext,
    String? historicalBackground,
    List<String>? internationalReactions,
    String? humanitarianImpact,
    String? economicImplications,
    List<String>? timeline,
    String? futureOutlook,
    List<String>? keyPlayers,
    String? technicalDetails,
    String? businessAngleText,
    List<String>? businessAnglePoints,
    List<String>? userActionItems,
    List<String>? scientificSignificance,
    List<String>? travelAdvisory,
    String? destinationHighlights,
    String? culinarySignificance,
    List<String>? performanceStatistics,
    String? leagueStandings,
    String? diyTips,
    String? designPrinciples,
    String? userExperienceImpact,
    List<String>? gameplayMechanics,
    List<String>? industryImpact,
    String? technicalSpecifications,
    List<ArticleDto1>? articles,
    List<DomainDto1>? domains,
  });
  ClusterDto1CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClusterDto1CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClusterDto1, $Out>
    implements ClusterDto1CopyWith<$R, ClusterDto1, $Out> {
  _ClusterDto1CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClusterDto1> $mapper =
      ClusterDto1Mapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get talkingPoints => ListCopyWith(
    $value.talkingPoints,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(talkingPoints: v),
  );
  @override
  ListCopyWith<
    $R,
    PerspectiveDto1,
    PerspectiveDto1CopyWith<$R, PerspectiveDto1, PerspectiveDto1>
  >
  get perspectives => ListCopyWith(
    $value.perspectives,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(perspectives: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get internationalReactions => ListCopyWith(
    $value.internationalReactions,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(internationalReactions: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeline =>
      ListCopyWith(
        $value.timeline,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(timeline: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get keyPlayers =>
      ListCopyWith(
        $value.keyPlayers,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(keyPlayers: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get businessAnglePoints => ListCopyWith(
    $value.businessAnglePoints,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(businessAnglePoints: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get userActionItems => ListCopyWith(
    $value.userActionItems,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(userActionItems: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get scientificSignificance => ListCopyWith(
    $value.scientificSignificance,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(scientificSignificance: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get travelAdvisory => ListCopyWith(
    $value.travelAdvisory,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(travelAdvisory: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get performanceStatistics => ListCopyWith(
    $value.performanceStatistics,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(performanceStatistics: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get gameplayMechanics => ListCopyWith(
    $value.gameplayMechanics,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(gameplayMechanics: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get industryImpact => ListCopyWith(
    $value.industryImpact,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(industryImpact: v),
  );
  @override
  ListCopyWith<
    $R,
    ArticleDto1,
    ArticleDto1CopyWith<$R, ArticleDto1, ArticleDto1>
  >
  get articles => ListCopyWith(
    $value.articles,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(articles: v),
  );
  @override
  ListCopyWith<$R, DomainDto1, DomainDto1CopyWith<$R, DomainDto1, DomainDto1>>
  get domains => ListCopyWith(
    $value.domains,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(domains: v),
  );
  @override
  $R call({
    int? clusterNumber,
    int? uniqueDomains,
    int? numberOfTitles,
    String? category,
    String? title,
    String? shortSummary,
    String? didYouKnow,
    List<String>? talkingPoints,
    String? quote,
    String? quoteAuthor,
    String? quoteSourceUrl,
    String? quoteSourceDomain,
    String? location,
    List<PerspectiveDto1>? perspectives,
    String? emoji,
    String? geopoliticalContext,
    String? historicalBackground,
    List<String>? internationalReactions,
    String? humanitarianImpact,
    String? economicImplications,
    List<String>? timeline,
    String? futureOutlook,
    List<String>? keyPlayers,
    String? technicalDetails,
    String? businessAngleText,
    List<String>? businessAnglePoints,
    List<String>? userActionItems,
    List<String>? scientificSignificance,
    List<String>? travelAdvisory,
    String? destinationHighlights,
    String? culinarySignificance,
    List<String>? performanceStatistics,
    String? leagueStandings,
    String? diyTips,
    String? designPrinciples,
    String? userExperienceImpact,
    List<String>? gameplayMechanics,
    List<String>? industryImpact,
    String? technicalSpecifications,
    List<ArticleDto1>? articles,
    List<DomainDto1>? domains,
  }) => $apply(
    FieldCopyWithData({
      if (clusterNumber != null) #clusterNumber: clusterNumber,
      if (uniqueDomains != null) #uniqueDomains: uniqueDomains,
      if (numberOfTitles != null) #numberOfTitles: numberOfTitles,
      if (category != null) #category: category,
      if (title != null) #title: title,
      if (shortSummary != null) #shortSummary: shortSummary,
      if (didYouKnow != null) #didYouKnow: didYouKnow,
      if (talkingPoints != null) #talkingPoints: talkingPoints,
      if (quote != null) #quote: quote,
      if (quoteAuthor != null) #quoteAuthor: quoteAuthor,
      if (quoteSourceUrl != null) #quoteSourceUrl: quoteSourceUrl,
      if (quoteSourceDomain != null) #quoteSourceDomain: quoteSourceDomain,
      if (location != null) #location: location,
      if (perspectives != null) #perspectives: perspectives,
      if (emoji != null) #emoji: emoji,
      if (geopoliticalContext != null)
        #geopoliticalContext: geopoliticalContext,
      if (historicalBackground != null)
        #historicalBackground: historicalBackground,
      if (internationalReactions != null)
        #internationalReactions: internationalReactions,
      if (humanitarianImpact != null) #humanitarianImpact: humanitarianImpact,
      if (economicImplications != null)
        #economicImplications: economicImplications,
      if (timeline != null) #timeline: timeline,
      if (futureOutlook != null) #futureOutlook: futureOutlook,
      if (keyPlayers != null) #keyPlayers: keyPlayers,
      if (technicalDetails != null) #technicalDetails: technicalDetails,
      if (businessAngleText != null) #businessAngleText: businessAngleText,
      if (businessAnglePoints != null)
        #businessAnglePoints: businessAnglePoints,
      if (userActionItems != null) #userActionItems: userActionItems,
      if (scientificSignificance != null)
        #scientificSignificance: scientificSignificance,
      if (travelAdvisory != null) #travelAdvisory: travelAdvisory,
      if (destinationHighlights != null)
        #destinationHighlights: destinationHighlights,
      if (culinarySignificance != null)
        #culinarySignificance: culinarySignificance,
      if (performanceStatistics != null)
        #performanceStatistics: performanceStatistics,
      if (leagueStandings != null) #leagueStandings: leagueStandings,
      if (diyTips != null) #diyTips: diyTips,
      if (designPrinciples != null) #designPrinciples: designPrinciples,
      if (userExperienceImpact != null)
        #userExperienceImpact: userExperienceImpact,
      if (gameplayMechanics != null) #gameplayMechanics: gameplayMechanics,
      if (industryImpact != null) #industryImpact: industryImpact,
      if (technicalSpecifications != null)
        #technicalSpecifications: technicalSpecifications,
      if (articles != null) #articles: articles,
      if (domains != null) #domains: domains,
    }),
  );
  @override
  ClusterDto1 $make(CopyWithData data) => ClusterDto1(
    clusterNumber: data.get(#clusterNumber, or: $value.clusterNumber),
    uniqueDomains: data.get(#uniqueDomains, or: $value.uniqueDomains),
    numberOfTitles: data.get(#numberOfTitles, or: $value.numberOfTitles),
    category: data.get(#category, or: $value.category),
    title: data.get(#title, or: $value.title),
    shortSummary: data.get(#shortSummary, or: $value.shortSummary),
    didYouKnow: data.get(#didYouKnow, or: $value.didYouKnow),
    talkingPoints: data.get(#talkingPoints, or: $value.talkingPoints),
    quote: data.get(#quote, or: $value.quote),
    quoteAuthor: data.get(#quoteAuthor, or: $value.quoteAuthor),
    quoteSourceUrl: data.get(#quoteSourceUrl, or: $value.quoteSourceUrl),
    quoteSourceDomain: data.get(
      #quoteSourceDomain,
      or: $value.quoteSourceDomain,
    ),
    location: data.get(#location, or: $value.location),
    perspectives: data.get(#perspectives, or: $value.perspectives),
    emoji: data.get(#emoji, or: $value.emoji),
    geopoliticalContext: data.get(
      #geopoliticalContext,
      or: $value.geopoliticalContext,
    ),
    historicalBackground: data.get(
      #historicalBackground,
      or: $value.historicalBackground,
    ),
    internationalReactions: data.get(
      #internationalReactions,
      or: $value.internationalReactions,
    ),
    humanitarianImpact: data.get(
      #humanitarianImpact,
      or: $value.humanitarianImpact,
    ),
    economicImplications: data.get(
      #economicImplications,
      or: $value.economicImplications,
    ),
    timeline: data.get(#timeline, or: $value.timeline),
    futureOutlook: data.get(#futureOutlook, or: $value.futureOutlook),
    keyPlayers: data.get(#keyPlayers, or: $value.keyPlayers),
    technicalDetails: data.get(#technicalDetails, or: $value.technicalDetails),
    businessAngleText: data.get(
      #businessAngleText,
      or: $value.businessAngleText,
    ),
    businessAnglePoints: data.get(
      #businessAnglePoints,
      or: $value.businessAnglePoints,
    ),
    userActionItems: data.get(#userActionItems, or: $value.userActionItems),
    scientificSignificance: data.get(
      #scientificSignificance,
      or: $value.scientificSignificance,
    ),
    travelAdvisory: data.get(#travelAdvisory, or: $value.travelAdvisory),
    destinationHighlights: data.get(
      #destinationHighlights,
      or: $value.destinationHighlights,
    ),
    culinarySignificance: data.get(
      #culinarySignificance,
      or: $value.culinarySignificance,
    ),
    performanceStatistics: data.get(
      #performanceStatistics,
      or: $value.performanceStatistics,
    ),
    leagueStandings: data.get(#leagueStandings, or: $value.leagueStandings),
    diyTips: data.get(#diyTips, or: $value.diyTips),
    designPrinciples: data.get(#designPrinciples, or: $value.designPrinciples),
    userExperienceImpact: data.get(
      #userExperienceImpact,
      or: $value.userExperienceImpact,
    ),
    gameplayMechanics: data.get(
      #gameplayMechanics,
      or: $value.gameplayMechanics,
    ),
    industryImpact: data.get(#industryImpact, or: $value.industryImpact),
    technicalSpecifications: data.get(
      #technicalSpecifications,
      or: $value.technicalSpecifications,
    ),
    articles: data.get(#articles, or: $value.articles),
    domains: data.get(#domains, or: $value.domains),
  );

  @override
  ClusterDto1CopyWith<$R2, ClusterDto1, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ClusterDto1CopyWithImpl($value, $cast, t);
}
