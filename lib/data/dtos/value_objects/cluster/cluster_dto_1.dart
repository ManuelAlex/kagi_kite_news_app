import 'dart:math';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';
import '../../_hook_mapper/list_or_single_hook.dart';
import '../../_json_mappers/list_or_single_json_mapper.dart';
import '../article/article_dto_1.dart';
import '../domain/domain_dto_1.dart';
import '../perspective/perspective_dto_1.dart';

part 'cluster_dto_1.mapper.dart';
part 'cluster_dto_1.g.dart';

@MappableClass(
  includeCustomMappers: <MapperBase<Object>>[ListOrSingleJsonMapper<String>()],
)
@HiveType(typeId: HiveTypeIds.clusterDto)
// Note that eg @MappableField(key: 'humanitarian_impact',hook: ListOrSingleHook<String>())
// we used of of json snake_case
// and also the hook helps to in fields where sometimes is a list or a single object
// we just cast all to a list
class ClusterDto1 extends Dto with ClusterDto1Mappable {
  const ClusterDto1({
    this.isRead = false,
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
    clusterNumber: Random().nextInt(10),
    uniqueDomains: Random().nextInt(10),
    numberOfTitles: Random().nextInt(10),
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
  @HiveField(0)
  @MappableField(key: 'cluster_number')
  final int clusterNumber;
  @HiveField(1)
  @MappableField(key: 'unique_domains')
  final int uniqueDomains;
  @HiveField(2)
  @MappableField(key: 'number_of_titles')
  @HiveField(3)
  final int numberOfTitles;
  @HiveField(4)
  final String category;
  @HiveField(5)
  final String title;
  @HiveField(6)
  @MappableField(key: 'short_summary')
  @HiveField(7)
  final String shortSummary;
  @HiveField(8)
  @MappableField(key: 'did_you_know')
  final String didYouKnow;
  @MappableField(key: 'talking_points')
  @HiveField(9)
  final List<String> talkingPoints;
  @HiveField(10)
  final String quote;
  @MappableField(key: 'quote_author')
  @HiveField(11)
  final String quoteAuthor;
  @MappableField(key: 'quote_source_url')
  @HiveField(12)
  final String quoteSourceUrl;
  @MappableField(key: 'quote_source_domain')
  @HiveField(13)
  final String quoteSourceDomain;
  @HiveField(14)
  final String location;
  @HiveField(15)
  final List<PerspectiveDto1> perspectives;
  @HiveField(16)
  final String emoji;
  @MappableField(key: 'geopolitical_context')
  @HiveField(17)
  final String geopoliticalContext;
  @MappableField(key: 'historical_background')
  @HiveField(18)
  final String historicalBackground;
  @MappableField(
    key: 'international_reactions',
    hook: ListOrSingleHook<String>(),
  )
  @HiveField(19)
  final List<String> internationalReactions;
  @MappableField(key: 'humanitarian_impact')
  @HiveField(20)
  final String humanitarianImpact;
  @MappableField(key: 'economic_implications')
  @HiveField(21)
  final String economicImplications;
  @MappableField(key: 'timeline', hook: ListOrSingleHook<String>())
  @HiveField(22)
  final List<String> timeline;
  @MappableField(key: 'future_outlook', hook: ListOrSingleHook<String>())
  @HiveField(23)
  final String futureOutlook;
  @MappableField(key: 'key_players', hook: ListOrSingleHook<String>())
  @HiveField(24)
  final List<String> keyPlayers;
  @MappableField(key: 'technical_details')
  @HiveField(25)
  final String technicalDetails;
  @MappableField(key: 'business_angle_text')
  @HiveField(26)
  final String businessAngleText;
  @MappableField(key: 'business_angle_points', hook: ListOrSingleHook<String>())
  @HiveField(27)
  final List<String> businessAnglePoints;
  @MappableField(key: 'user_action_items', hook: ListOrSingleHook<String>())
  @HiveField(28)
  final List<String> userActionItems;
  @MappableField(
    key: 'scientific_significance',
    hook: ListOrSingleHook<String>(),
  )
  @HiveField(29)
  final List<String> scientificSignificance;
  @MappableField(key: 'travel_advisory', hook: ListOrSingleHook<String>())
  @HiveField(30)
  final List<String> travelAdvisory;
  @MappableField(
    key: 'destination_highlights',
    hook: ListOrSingleHook<String>(),
  )
  @HiveField(31)
  final String destinationHighlights;
  @MappableField(key: 'culinary_significance')
  @HiveField(32)
  final String culinarySignificance;
  @MappableField(
    key: 'performance_statistics',
    hook: ListOrSingleHook<String>(),
  )
  @HiveField(33)
  final List<String> performanceStatistics;
  @MappableField(key: 'league_standings', hook: ListOrSingleHook<String>())
  @HiveField(34)
  final String leagueStandings;
  @MappableField(key: 'diy_tips')
  @HiveField(35)
  final String diyTips;
  @MappableField(key: 'design_principles')
  @HiveField(36)
  final String designPrinciples;
  @MappableField(key: 'user_experience_impact')
  @HiveField(37)
  final String userExperienceImpact;
  @MappableField(key: 'gameplay_mechanics', hook: ListOrSingleHook<String>())
  @HiveField(38)
  final List<String> gameplayMechanics;
  @MappableField(key: 'industry_impact', hook: ListOrSingleHook<String>())
  @HiveField(39)
  final List<String> industryImpact;
  @MappableField(
    key: 'technical_specifications',
    hook: ListOrSingleHook<String>(),
  )
  @HiveField(40)
  final String technicalSpecifications;
  @HiveField(41)
  final List<ArticleDto1> articles;
  @HiveField(42)
  final List<DomainDto1> domains;
  @HiveField(43)
  final bool isRead;
}
