import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';

part 'category.mapper.dart';

@MappableValueObject()
class Category with CategoryMappable {
  const Category({required this.name, required this.file});
  final String name;
  final String file;
}
