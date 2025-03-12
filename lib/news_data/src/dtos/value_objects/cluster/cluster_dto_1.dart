import 'dart:math';

import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';
import '../../hook_mapper/list_or_single_hook.dart';
import '../../json_mappers/list_or_single_json_mapper.dart';
import '../article/article_dto_1.dart';
import '../domain/domain_dto_1.dart';
import '../perspective/perspective_dto_1.dart';

part 'cluster_dto_1.mapper.dart';

@MappableClass(
  includeCustomMappers: <MapperBase<Object>>[ListOrSingleJsonMapper<String>()],
)
// Note that eg @MappableField(key: 'humanitarian_impact',hook: ListOrSingleHook<String>())
// we used of of json snake_case
// and also the hook helps to in fields where sometimes is a list or a single object
// we just cast all to a list
class ClusterDto1 extends Dto with ClusterDto1Mappable {
  const ClusterDto1({
    required this.clusterNumber,
    required this.uniqueDomains,
    required this.numberOfTitles,
    required this.category,
    required this.title,
    required this.shortSummary,
    required this.didYouKnow,
    required this.talkingPoints,
    required this.quote,
    required this.quoteAuthor,
    required this.quoteSourceUrl,
    required this.quoteSourceDomain,
    required this.location,
    required this.perspectives,
    required this.emoji,
    required this.geopoliticalContext,
    required this.historicalBackground,
    required this.internationalReactions,
    required this.humanitarianImpact,
    required this.economicImplications,
    required this.timeline,
    required this.futureOutlook,
    required this.keyPlayers,
    required this.technicalDetails,
    required this.businessAngleText,
    required this.businessAnglePoints,
    required this.userActionItems,
    required this.scientificSignificance,
    required this.travelAdvisory,
    required this.destinationHighlights,
    required this.culinarySignificance,
    required this.performanceStatistics,
    required this.leagueStandings,
    required this.diyTips,
    required this.designPrinciples,
    required this.userExperienceImpact,
    required this.gameplayMechanics,
    required this.industryImpact,
    required this.technicalSpecifications,
    required this.articles,
    required this.domains,
  });

  factory ClusterDto1.random() => ClusterDto1(
    clusterNumber: Random().nextInt(100),
    uniqueDomains: Random().nextInt(100),
    numberOfTitles: Random().nextInt(100),
    category: 'category',
    title: 'title',
    shortSummary: 'shortSummary',
    didYouKnow: 'didYouKnow',
    talkingPoints: const <String>['talkingPoints'],
    quote: 'quote',
    quoteAuthor: 'quoteAuthor',
    quoteSourceUrl: 'quoteSourceUrl',
    quoteSourceDomain: 'quoteSourceDomain',
    location: 'location',
    perspectives: <PerspectiveDto1>[PerspectiveDto1.random()],
    emoji: 'emoji',
    geopoliticalContext: 'geopoliticalContext',
    historicalBackground: 'historicalBackground',
    internationalReactions: const <String>['internationalReactions'],
    humanitarianImpact: 'humanitarianImpact',
    economicImplications: 'economicImplications',
    timeline: const <String>['timeline'],
    futureOutlook: 'futureOutlook',
    keyPlayers: const <String>['keyPlayers'],
    technicalDetails: 'technicalDetails',
    businessAngleText: 'businessAngleText',
    businessAnglePoints: const <String>['businessAnglePoints'],
    userActionItems: const <String>['userActionItems'],
    scientificSignificance: const <String>['scientificSignificance'],
    travelAdvisory: const <String>['travelAdvisory'],
    destinationHighlights: 'destinationHighlights',
    culinarySignificance: 'culinarySignificance',
    performanceStatistics: const <String>['performanceStatistics'],
    leagueStandings: 'leagueStandings',
    diyTips: 'diyTips',
    designPrinciples: 'designPrinciples',
    userExperienceImpact: 'userExperienceImpact',
    gameplayMechanics: const <String>['gameplayMechanics'],
    industryImpact: const <String>['industryImpact'],
    technicalSpecifications: 'technicalSpecifications',
    articles: <ArticleDto1>[ArticleDto1.random()],
    domains: <DomainDto1>[DomainDto1.random()],
  );

  @MappableField(key: 'cluster_number')
  final int clusterNumber;
  @MappableField(key: 'unique_domains')
  final int uniqueDomains;
  @MappableField(key: 'number_of_titles')
  final int numberOfTitles;
  final String category;
  final String title;
  @MappableField(key: 'short_summary')
  final String shortSummary;
  @MappableField(key: 'did_you_know')
  final String didYouKnow;
  @MappableField(key: 'talking_points')
  final List<String> talkingPoints;
  final String quote;
  @MappableField(key: 'quote_author')
  final String quoteAuthor;
  @MappableField(key: 'quote_source_url')
  final String quoteSourceUrl;
  @MappableField(key: 'quote_source_domain')
  final String quoteSourceDomain;
  final String location;
  final List<PerspectiveDto1> perspectives;
  final String emoji;
  @MappableField(key: 'geopolitical_context')
  final String geopoliticalContext;
  @MappableField(key: 'historical_background')
  final String historicalBackground;
  @MappableField(
    key: 'international_reactions',
    hook: ListOrSingleHook<String>(),
  )
  final List<String> internationalReactions;
  @MappableField(key: 'humanitarian_impact')
  final String humanitarianImpact;
  @MappableField(key: 'economic_implications')
  final String economicImplications;
  @MappableField(key: 'timeline', hook: ListOrSingleHook<String>())
  final List<String> timeline;
  @MappableField(key: 'future_outlook', hook: ListOrSingleHook<String>())
  final String futureOutlook;
  @MappableField(key: 'key_players', hook: ListOrSingleHook<String>())
  final List<String> keyPlayers;
  @MappableField(key: 'technical_details')
  final String technicalDetails;
  @MappableField(key: 'business_angle_text')
  final String businessAngleText;
  @MappableField(key: 'business_angle_points', hook: ListOrSingleHook<String>())
  final List<String> businessAnglePoints;
  @MappableField(key: 'user_action_items', hook: ListOrSingleHook<String>())
  final List<String> userActionItems;
  @MappableField(
    key: 'scientific_significance',
    hook: ListOrSingleHook<String>(),
  )
  final List<String> scientificSignificance;
  @MappableField(key: 'travel_advisory', hook: ListOrSingleHook<String>())
  final List<String> travelAdvisory;
  @MappableField(
    key: 'destination_highlights',
    hook: ListOrSingleHook<String>(),
  )
  final String destinationHighlights;
  @MappableField(key: 'culinary_significance')
  final String culinarySignificance;
  @MappableField(
    key: 'performance_statistics',
    hook: ListOrSingleHook<String>(),
  )
  final List<String> performanceStatistics;
  @MappableField(key: 'league_standings', hook: ListOrSingleHook<String>())
  final String leagueStandings;
  @MappableField(key: 'diy_tips')
  final String diyTips;
  @MappableField(key: 'design_principles')
  final String designPrinciples;
  @MappableField(key: 'user_experience_impact')
  final String userExperienceImpact;
  @MappableField(key: 'gameplay_mechanics', hook: ListOrSingleHook<String>())
  final List<String> gameplayMechanics;
  @MappableField(key: 'industry_impact', hook: ListOrSingleHook<String>())
  final List<String> industryImpact;
  @MappableField(
    key: 'technical_specifications',
    hook: ListOrSingleHook<String>(),
  )
  final String technicalSpecifications;
  final List<ArticleDto1> articles;
  final List<DomainDto1> domains;
}
