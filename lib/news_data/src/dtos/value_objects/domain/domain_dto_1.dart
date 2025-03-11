import 'package:dart_mappable/dart_mappable.dart';

import '../../_dto.dart';

part 'domain_dto_1.mapper.dart';

@MappableClass()
class DomainDto1 extends Dto with DomainDto1Mappable {
  const DomainDto1({required this.name, required this.favicon});

  /// Used for test purposes
  factory DomainDto1.random() =>
      const DomainDto1(name: 'test', favicon: 'favicon');
  final String name;
  final String favicon;
}
