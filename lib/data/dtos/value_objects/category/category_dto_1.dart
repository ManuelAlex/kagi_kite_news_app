import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';

import '../../_hive_type_id.dart';

part 'category_dto_1.mapper.dart';
part 'category_dto_1.g.dart';

@MappableClass()
@HiveType(typeId: HiveTypeIds.categoryDto)
class CategoryDto1 extends Dto with CategoryDto1Mappable {
  const CategoryDto1({required this.name, required this.file});
  // Randon factory constructor for test purposes.
  factory CategoryDto1.random() =>
      const CategoryDto1(name: 'name', file: 'file');
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String file;
}
