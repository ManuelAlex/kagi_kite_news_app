import 'package:dart_mappable/dart_mappable.dart';

import '_entity.dart';
import '_mappable_entity.dart';
import 'value_objects/cluster.dart';

part 'category_details.mapper.dart';

@MappableEntity()
class CategoryDetails extends Entity<String> with CategoryDetailsMappable {
  const CategoryDetails({
    required super.timestamp,
    required this.category,
    required this.read,
    required this.clusters,
  }) : super(id: category);

  final String category;
  final int read;
  final List<Cluster> clusters;
}
