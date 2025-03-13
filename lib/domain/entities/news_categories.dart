import 'package:dart_mappable/dart_mappable.dart';

import '_entity.dart';
import '_mappable_entity.dart';
import 'value_objects/category.dart';
part 'news_categories.mapper.dart';

@MappableEntity()
class NewsCategories extends Entity<void> with NewsCategoriesMappable {
  const NewsCategories({required super.timestamp, required this.categories})
    : super(id: null);

  final List<Category> categories;
}
