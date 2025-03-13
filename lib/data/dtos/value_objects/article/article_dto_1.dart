import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';
import '../../_json_mappers/datetime_json_mapper.dart';

part 'article_dto_1.mapper.dart';
part 'article_dto_1.g.dart';

@HiveType(typeId: HiveTypeIds.articleDto)
@MappableClass(includeCustomMappers: <MapperBase<Object>>[DatetimeJsonMapper()])
class ArticleDto1 extends Dto with ArticleDto1Mappable {
  const ArticleDto1({
    required this.title,
    required this.link,
    required this.domain,
    required this.date,
    this.image,
    this.imageCaption,
  });
  factory ArticleDto1.random() => ArticleDto1(
    title: 'title',
    link: 'link',
    domain: 'domain',
    date: DateTime.timestamp(),
  );
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String link;
  @HiveField(2)
  final String domain;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final String? image;
  @HiveField(5)
  @MappableField(key: 'image_caption')
  @HiveField(6)
  final String? imageCaption;
}
