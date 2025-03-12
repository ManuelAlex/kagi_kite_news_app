import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';
import '../../json_mappers/datetime_json_mapper.dart';

part 'article_dto_1.mapper.dart';

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

  final String title;
  final String link;
  final String domain;
  final DateTime date;
  final String? image;
  @MappableField(key: 'image_caption')
  final String? imageCaption;
}
