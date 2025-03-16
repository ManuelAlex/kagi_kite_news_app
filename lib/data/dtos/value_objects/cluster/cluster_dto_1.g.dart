// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_bool_literals_in_conditional_expressions

part of 'cluster_dto_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClusterDto1Adapter extends TypeAdapter<ClusterDto1> {
  @override
  final int typeId = 4;

  @override
  ClusterDto1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClusterDto1(
      isRead: fields[43] == null ? false : fields[43] as bool,
      clusterNumber: (fields[0] as num).toInt(),
      uniqueDomains: (fields[1] as num).toInt(),
      numberOfTitles: (fields[2] as num).toInt(),
      category: fields[4] as String,
      title: fields[5] as String,
      shortSummary: fields[6] as String,
      didYouKnow: fields[8] as String,
      talkingPoints: (fields[9] as List).cast<String>(),
      quote: fields[10] as String,
      quoteAuthor: fields[11] as String,
      quoteSourceUrl: fields[12] as String,
      quoteSourceDomain: fields[13] as String,
      location: fields[14] as String,
      perspectives: (fields[15] as List).cast<PerspectiveDto1>(),
      emoji: fields[16] as String,
      geopoliticalContext: fields[17] as String,
      historicalBackground: fields[18] as String,
      internationalReactions: (fields[19] as List).cast<String>(),
      humanitarianImpact: fields[20] as String,
      economicImplications: fields[21] as String,
      timeline: (fields[22] as List).cast<String>(),
      futureOutlook: fields[23] as String,
      keyPlayers: (fields[24] as List).cast<String>(),
      technicalDetails: fields[25] as String,
      businessAngleText: fields[26] as String,
      businessAnglePoints: (fields[27] as List).cast<String>(),
      userActionItems: (fields[28] as List).cast<String>(),
      scientificSignificance: (fields[29] as List).cast<String>(),
      travelAdvisory: (fields[30] as List).cast<String>(),
      destinationHighlights: fields[31] as String,
      culinarySignificance: fields[32] as String,
      performanceStatistics: (fields[33] as List).cast<String>(),
      leagueStandings: fields[34] as String,
      diyTips: fields[35] as String,
      designPrinciples: fields[36] as String,
      userExperienceImpact: fields[37] as String,
      gameplayMechanics: (fields[38] as List).cast<String>(),
      industryImpact: (fields[39] as List).cast<String>(),
      technicalSpecifications: fields[40] as String,
      articles: (fields[41] as List).cast<ArticleDto1>(),
      domains: (fields[42] as List).cast<DomainDto1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClusterDto1 obj) {
    writer
      ..writeByte(42)
      ..writeByte(0)
      ..write(obj.clusterNumber)
      ..writeByte(1)
      ..write(obj.uniqueDomains)
      ..writeByte(2)
      ..write(obj.numberOfTitles)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.shortSummary)
      ..writeByte(8)
      ..write(obj.didYouKnow)
      ..writeByte(9)
      ..write(obj.talkingPoints)
      ..writeByte(10)
      ..write(obj.quote)
      ..writeByte(11)
      ..write(obj.quoteAuthor)
      ..writeByte(12)
      ..write(obj.quoteSourceUrl)
      ..writeByte(13)
      ..write(obj.quoteSourceDomain)
      ..writeByte(14)
      ..write(obj.location)
      ..writeByte(15)
      ..write(obj.perspectives)
      ..writeByte(16)
      ..write(obj.emoji)
      ..writeByte(17)
      ..write(obj.geopoliticalContext)
      ..writeByte(18)
      ..write(obj.historicalBackground)
      ..writeByte(19)
      ..write(obj.internationalReactions)
      ..writeByte(20)
      ..write(obj.humanitarianImpact)
      ..writeByte(21)
      ..write(obj.economicImplications)
      ..writeByte(22)
      ..write(obj.timeline)
      ..writeByte(23)
      ..write(obj.futureOutlook)
      ..writeByte(24)
      ..write(obj.keyPlayers)
      ..writeByte(25)
      ..write(obj.technicalDetails)
      ..writeByte(26)
      ..write(obj.businessAngleText)
      ..writeByte(27)
      ..write(obj.businessAnglePoints)
      ..writeByte(28)
      ..write(obj.userActionItems)
      ..writeByte(29)
      ..write(obj.scientificSignificance)
      ..writeByte(30)
      ..write(obj.travelAdvisory)
      ..writeByte(31)
      ..write(obj.destinationHighlights)
      ..writeByte(32)
      ..write(obj.culinarySignificance)
      ..writeByte(33)
      ..write(obj.performanceStatistics)
      ..writeByte(34)
      ..write(obj.leagueStandings)
      ..writeByte(35)
      ..write(obj.diyTips)
      ..writeByte(36)
      ..write(obj.designPrinciples)
      ..writeByte(37)
      ..write(obj.userExperienceImpact)
      ..writeByte(38)
      ..write(obj.gameplayMechanics)
      ..writeByte(39)
      ..write(obj.industryImpact)
      ..writeByte(40)
      ..write(obj.technicalSpecifications)
      ..writeByte(41)
      ..write(obj.articles)
      ..writeByte(42)
      ..write(obj.domains)
      ..writeByte(43)
      ..write(obj.isRead);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterDto1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
