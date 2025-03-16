// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cluster.dart';

class ClusterMapper extends ClassMapperBase<Cluster> {
  ClusterMapper._();

  static ClusterMapper? _instance;
  static ClusterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClusterMapper._());
      PerspectiveMapper.ensureInitialized();
      ArticleMapper.ensureInitialized();
      DomainMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Cluster';

  static bool _$isRead(Cluster v) => v.isRead;
  static const Field<Cluster, bool> _f$isRead =
      Field('isRead', _$isRead, opt: true, def: false);
  static int _$clusterNumber(Cluster v) => v.clusterNumber;
  static const Field<Cluster, int> _f$clusterNumber =
      Field('clusterNumber', _$clusterNumber);
  static int _$uniqueDomains(Cluster v) => v.uniqueDomains;
  static const Field<Cluster, int> _f$uniqueDomains =
      Field('uniqueDomains', _$uniqueDomains);
  static int _$numberOfTitles(Cluster v) => v.numberOfTitles;
  static const Field<Cluster, int> _f$numberOfTitles =
      Field('numberOfTitles', _$numberOfTitles);
  static String _$category(Cluster v) => v.category;
  static const Field<Cluster, String> _f$category =
      Field('category', _$category);
  static String _$title(Cluster v) => v.title;
  static const Field<Cluster, String> _f$title = Field('title', _$title);
  static String _$shortSummary(Cluster v) => v.shortSummary;
  static const Field<Cluster, String> _f$shortSummary =
      Field('shortSummary', _$shortSummary);
  static String _$didYouKnow(Cluster v) => v.didYouKnow;
  static const Field<Cluster, String> _f$didYouKnow =
      Field('didYouKnow', _$didYouKnow);
  static List<String> _$talkingPoints(Cluster v) => v.talkingPoints;
  static const Field<Cluster, List<String>> _f$talkingPoints =
      Field('talkingPoints', _$talkingPoints);
  static String _$quote(Cluster v) => v.quote;
  static const Field<Cluster, String> _f$quote = Field('quote', _$quote);
  static String _$quoteAuthor(Cluster v) => v.quoteAuthor;
  static const Field<Cluster, String> _f$quoteAuthor =
      Field('quoteAuthor', _$quoteAuthor);
  static String _$quoteSourceUrl(Cluster v) => v.quoteSourceUrl;
  static const Field<Cluster, String> _f$quoteSourceUrl =
      Field('quoteSourceUrl', _$quoteSourceUrl);
  static String _$quoteSourceDomain(Cluster v) => v.quoteSourceDomain;
  static const Field<Cluster, String> _f$quoteSourceDomain =
      Field('quoteSourceDomain', _$quoteSourceDomain);
  static String _$location(Cluster v) => v.location;
  static const Field<Cluster, String> _f$location =
      Field('location', _$location);
  static List<Perspective> _$perspectives(Cluster v) => v.perspectives;
  static const Field<Cluster, List<Perspective>> _f$perspectives =
      Field('perspectives', _$perspectives);
  static String _$emoji(Cluster v) => v.emoji;
  static const Field<Cluster, String> _f$emoji = Field('emoji', _$emoji);
  static String _$geopoliticalContext(Cluster v) => v.geopoliticalContext;
  static const Field<Cluster, String> _f$geopoliticalContext =
      Field('geopoliticalContext', _$geopoliticalContext);
  static String _$historicalBackground(Cluster v) => v.historicalBackground;
  static const Field<Cluster, String> _f$historicalBackground =
      Field('historicalBackground', _$historicalBackground);
  static List<String> _$internationalReactions(Cluster v) =>
      v.internationalReactions;
  static const Field<Cluster, List<String>> _f$internationalReactions =
      Field('internationalReactions', _$internationalReactions);
  static String _$humanitarianImpact(Cluster v) => v.humanitarianImpact;
  static const Field<Cluster, String> _f$humanitarianImpact =
      Field('humanitarianImpact', _$humanitarianImpact);
  static String _$economicImplications(Cluster v) => v.economicImplications;
  static const Field<Cluster, String> _f$economicImplications =
      Field('economicImplications', _$economicImplications);
  static List<String> _$timeline(Cluster v) => v.timeline;
  static const Field<Cluster, List<String>> _f$timeline =
      Field('timeline', _$timeline);
  static String _$futureOutlook(Cluster v) => v.futureOutlook;
  static const Field<Cluster, String> _f$futureOutlook =
      Field('futureOutlook', _$futureOutlook);
  static List<String> _$keyPlayers(Cluster v) => v.keyPlayers;
  static const Field<Cluster, List<String>> _f$keyPlayers =
      Field('keyPlayers', _$keyPlayers);
  static String _$technicalDetails(Cluster v) => v.technicalDetails;
  static const Field<Cluster, String> _f$technicalDetails =
      Field('technicalDetails', _$technicalDetails);
  static String _$businessAngleText(Cluster v) => v.businessAngleText;
  static const Field<Cluster, String> _f$businessAngleText =
      Field('businessAngleText', _$businessAngleText);
  static List<String> _$businessAnglePoints(Cluster v) => v.businessAnglePoints;
  static const Field<Cluster, List<String>> _f$businessAnglePoints =
      Field('businessAnglePoints', _$businessAnglePoints);
  static List<String> _$userActionItems(Cluster v) => v.userActionItems;
  static const Field<Cluster, List<String>> _f$userActionItems =
      Field('userActionItems', _$userActionItems);
  static List<String> _$scientificSignificance(Cluster v) =>
      v.scientificSignificance;
  static const Field<Cluster, List<String>> _f$scientificSignificance =
      Field('scientificSignificance', _$scientificSignificance);
  static List<String> _$travelAdvisory(Cluster v) => v.travelAdvisory;
  static const Field<Cluster, List<String>> _f$travelAdvisory =
      Field('travelAdvisory', _$travelAdvisory);
  static String _$destinationHighlights(Cluster v) => v.destinationHighlights;
  static const Field<Cluster, String> _f$destinationHighlights =
      Field('destinationHighlights', _$destinationHighlights);
  static String _$culinarySignificance(Cluster v) => v.culinarySignificance;
  static const Field<Cluster, String> _f$culinarySignificance =
      Field('culinarySignificance', _$culinarySignificance);
  static List<String> _$performanceStatistics(Cluster v) =>
      v.performanceStatistics;
  static const Field<Cluster, List<String>> _f$performanceStatistics =
      Field('performanceStatistics', _$performanceStatistics);
  static String _$leagueStandings(Cluster v) => v.leagueStandings;
  static const Field<Cluster, String> _f$leagueStandings =
      Field('leagueStandings', _$leagueStandings);
  static String _$diyTips(Cluster v) => v.diyTips;
  static const Field<Cluster, String> _f$diyTips = Field('diyTips', _$diyTips);
  static String _$designPrinciples(Cluster v) => v.designPrinciples;
  static const Field<Cluster, String> _f$designPrinciples =
      Field('designPrinciples', _$designPrinciples);
  static String _$userExperienceImpact(Cluster v) => v.userExperienceImpact;
  static const Field<Cluster, String> _f$userExperienceImpact =
      Field('userExperienceImpact', _$userExperienceImpact);
  static List<String> _$gameplayMechanics(Cluster v) => v.gameplayMechanics;
  static const Field<Cluster, List<String>> _f$gameplayMechanics =
      Field('gameplayMechanics', _$gameplayMechanics);
  static List<String> _$industryImpact(Cluster v) => v.industryImpact;
  static const Field<Cluster, List<String>> _f$industryImpact =
      Field('industryImpact', _$industryImpact);
  static String _$technicalSpecifications(Cluster v) =>
      v.technicalSpecifications;
  static const Field<Cluster, String> _f$technicalSpecifications =
      Field('technicalSpecifications', _$technicalSpecifications);
  static List<Article> _$articles(Cluster v) => v.articles;
  static const Field<Cluster, List<Article>> _f$articles =
      Field('articles', _$articles);
  static List<Domain> _$domains(Cluster v) => v.domains;
  static const Field<Cluster, List<Domain>> _f$domains =
      Field('domains', _$domains);

  @override
  final MappableFields<Cluster> fields = const {
    #isRead: _f$isRead,
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

  static Cluster _instantiate(DecodingData data) {
    return Cluster(
        isRead: data.dec(_f$isRead),
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
        domains: data.dec(_f$domains));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ClusterMappable {
  ClusterCopyWith<Cluster, Cluster, Cluster> get copyWith =>
      _ClusterCopyWithImpl(this as Cluster, $identity, $identity);
  @override
  String toString() {
    return ClusterMapper.ensureInitialized().stringifyValue(this as Cluster);
  }

  @override
  bool operator ==(Object other) {
    return ClusterMapper.ensureInitialized()
        .equalsValue(this as Cluster, other);
  }

  @override
  int get hashCode {
    return ClusterMapper.ensureInitialized().hashValue(this as Cluster);
  }
}

extension ClusterValueCopy<$R, $Out> on ObjectCopyWith<$R, Cluster, $Out> {
  ClusterCopyWith<$R, Cluster, $Out> get $asCluster =>
      $base.as((v, t, t2) => _ClusterCopyWithImpl(v, t, t2));
}

abstract class ClusterCopyWith<$R, $In extends Cluster, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get talkingPoints;
  ListCopyWith<$R, Perspective,
      PerspectiveCopyWith<$R, Perspective, Perspective>> get perspectives;
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
  ListCopyWith<$R, Article, ArticleCopyWith<$R, Article, Article>> get articles;
  ListCopyWith<$R, Domain, DomainCopyWith<$R, Domain, Domain>> get domains;
  $R call(
      {bool? isRead,
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
      List<Perspective>? perspectives,
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
      List<Article>? articles,
      List<Domain>? domains});
  ClusterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClusterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Cluster, $Out>
    implements ClusterCopyWith<$R, Cluster, $Out> {
  _ClusterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Cluster> $mapper =
      ClusterMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get talkingPoints => ListCopyWith(
          $value.talkingPoints,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(talkingPoints: v));
  @override
  ListCopyWith<$R, Perspective,
          PerspectiveCopyWith<$R, Perspective, Perspective>>
      get perspectives => ListCopyWith($value.perspectives,
          (v, t) => v.copyWith.$chain(t), (v) => call(perspectives: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get internationalReactions => ListCopyWith(
          $value.internationalReactions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(internationalReactions: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeline =>
      ListCopyWith($value.timeline, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(timeline: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get keyPlayers =>
      ListCopyWith($value.keyPlayers, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(keyPlayers: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get businessAnglePoints => ListCopyWith(
          $value.businessAnglePoints,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(businessAnglePoints: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get userActionItems => ListCopyWith(
          $value.userActionItems,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(userActionItems: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get scientificSignificance => ListCopyWith(
          $value.scientificSignificance,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(scientificSignificance: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get travelAdvisory => ListCopyWith(
          $value.travelAdvisory,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(travelAdvisory: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get performanceStatistics => ListCopyWith(
          $value.performanceStatistics,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(performanceStatistics: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get gameplayMechanics => ListCopyWith(
          $value.gameplayMechanics,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(gameplayMechanics: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get industryImpact => ListCopyWith(
          $value.industryImpact,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(industryImpact: v));
  @override
  ListCopyWith<$R, Article, ArticleCopyWith<$R, Article, Article>>
      get articles => ListCopyWith($value.articles,
          (v, t) => v.copyWith.$chain(t), (v) => call(articles: v));
  @override
  ListCopyWith<$R, Domain, DomainCopyWith<$R, Domain, Domain>> get domains =>
      ListCopyWith($value.domains, (v, t) => v.copyWith.$chain(t),
          (v) => call(domains: v));
  @override
  $R call(
          {bool? isRead,
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
          List<Perspective>? perspectives,
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
          List<Article>? articles,
          List<Domain>? domains}) =>
      $apply(FieldCopyWithData({
        if (isRead != null) #isRead: isRead,
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
        if (domains != null) #domains: domains
      }));
  @override
  Cluster $make(CopyWithData data) => Cluster(
      isRead: data.get(#isRead, or: $value.isRead),
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
      quoteSourceDomain:
          data.get(#quoteSourceDomain, or: $value.quoteSourceDomain),
      location: data.get(#location, or: $value.location),
      perspectives: data.get(#perspectives, or: $value.perspectives),
      emoji: data.get(#emoji, or: $value.emoji),
      geopoliticalContext:
          data.get(#geopoliticalContext, or: $value.geopoliticalContext),
      historicalBackground:
          data.get(#historicalBackground, or: $value.historicalBackground),
      internationalReactions:
          data.get(#internationalReactions, or: $value.internationalReactions),
      humanitarianImpact:
          data.get(#humanitarianImpact, or: $value.humanitarianImpact),
      economicImplications:
          data.get(#economicImplications, or: $value.economicImplications),
      timeline: data.get(#timeline, or: $value.timeline),
      futureOutlook: data.get(#futureOutlook, or: $value.futureOutlook),
      keyPlayers: data.get(#keyPlayers, or: $value.keyPlayers),
      technicalDetails:
          data.get(#technicalDetails, or: $value.technicalDetails),
      businessAngleText:
          data.get(#businessAngleText, or: $value.businessAngleText),
      businessAnglePoints:
          data.get(#businessAnglePoints, or: $value.businessAnglePoints),
      userActionItems: data.get(#userActionItems, or: $value.userActionItems),
      scientificSignificance:
          data.get(#scientificSignificance, or: $value.scientificSignificance),
      travelAdvisory: data.get(#travelAdvisory, or: $value.travelAdvisory),
      destinationHighlights:
          data.get(#destinationHighlights, or: $value.destinationHighlights),
      culinarySignificance:
          data.get(#culinarySignificance, or: $value.culinarySignificance),
      performanceStatistics:
          data.get(#performanceStatistics, or: $value.performanceStatistics),
      leagueStandings: data.get(#leagueStandings, or: $value.leagueStandings),
      diyTips: data.get(#diyTips, or: $value.diyTips),
      designPrinciples:
          data.get(#designPrinciples, or: $value.designPrinciples),
      userExperienceImpact:
          data.get(#userExperienceImpact, or: $value.userExperienceImpact),
      gameplayMechanics:
          data.get(#gameplayMechanics, or: $value.gameplayMechanics),
      industryImpact: data.get(#industryImpact, or: $value.industryImpact),
      technicalSpecifications: data.get(#technicalSpecifications,
          or: $value.technicalSpecifications),
      articles: data.get(#articles, or: $value.articles),
      domains: data.get(#domains, or: $value.domains));

  @override
  ClusterCopyWith<$R2, Cluster, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ClusterCopyWithImpl($value, $cast, t);
}
