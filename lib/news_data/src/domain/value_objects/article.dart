import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';

part 'article.mapper.dart';

@MappableValueObject()
class Article with ArticleMappable {
  const Article({
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

  final String? imageCaption;
}
