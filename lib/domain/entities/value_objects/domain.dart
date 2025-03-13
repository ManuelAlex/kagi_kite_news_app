import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';

part 'domain.mapper.dart';

@MappableValueObject()
class Domain with DomainMappable {
  const Domain({required this.name, required this.favicon});

  /// Used for test purposes
  factory Domain.random() => const Domain(name: 'name', favicon: 'favicon');

  final String name;
  final String favicon;
}
