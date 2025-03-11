import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';

part 'article_dto_1.mapper.dart';

@MappableClass()
class ArticleDto1 extends Dto with ArticleDto1Mappable {
  const ArticleDto1({
    required this.title,
    required this.link,
    required this.domain,
    required this.date,
    this.image,
    this.imageCaption,
  });

  final String title;
  final String link;
  final String domain;
  final DateTime date;
  final String? image;
  @MappableField(key: 'image_caption')
  final String? imageCaption;
}
