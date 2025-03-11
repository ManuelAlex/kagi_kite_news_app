import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';

part 'category_dto_1.mapper.dart';

@MappableClass()
class CategoryDto1 extends Dto with CategoryDto1Mappable {
  const CategoryDto1({required this.name, required this.file});
  final String name;
  final String file;
}
