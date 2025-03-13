import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';

part 'domain_dto_1.mapper.dart';
part 'domain_dto_1.g.dart';

@MappableClass()
@HiveType(typeId: HiveTypeIds.domainDto)
class DomainDto1 extends Dto with DomainDto1Mappable {
  const DomainDto1({required this.name, required this.favicon});

  /// Used for test purposes
  factory DomainDto1.random() =>
      const DomainDto1(name: 'test', favicon: 'favicon');

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String favicon;
}
