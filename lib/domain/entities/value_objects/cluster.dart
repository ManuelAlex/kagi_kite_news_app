import 'dart:math';

import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';
import 'article.dart';
import 'domain.dart';
import 'perspective.dart';

part 'cluster.mapper.dart';

@MappableValueObject()
class Cluster with ClusterMappable {
  const Cluster({
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

  /// Used for testing purposes
  factory Cluster.random() => Cluster(
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
    perspectives: <Perspective>[Perspective.random()],
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
    articles: <Article>[Article.random()],
    domains: <Domain>[Domain.random()],
  );
  final int clusterNumber;
  final int uniqueDomains;
  final int numberOfTitles;
  final String category;
  final String title;
  final String shortSummary;
  final String didYouKnow;
  final List<String> talkingPoints;
  final String quote;
  final String quoteAuthor;
  final String quoteSourceUrl;
  final String quoteSourceDomain;
  final String location;
  final List<Perspective> perspectives;
  final String emoji;
  final String geopoliticalContext;
  final String historicalBackground;
  final List<String> internationalReactions;
  final String humanitarianImpact;
  final String economicImplications;
  final List<String> timeline;
  final String futureOutlook;
  final List<String> keyPlayers;
  final String technicalDetails;
  final String businessAngleText;
  final List<String> businessAnglePoints;
  final List<String> userActionItems;
  final List<String> scientificSignificance;
  final List<String> travelAdvisory;
  final String destinationHighlights;
  final String culinarySignificance;
  final List<String> performanceStatistics;
  final String leagueStandings;
  final String diyTips;
  final String designPrinciples;
  final String userExperienceImpact;
  final List<String> gameplayMechanics;
  final List<String> industryImpact;
  final String technicalSpecifications;
  final List<Article> articles;
  final List<Domain> domains;
  final bool isRead;
}
