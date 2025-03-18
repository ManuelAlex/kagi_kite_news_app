import 'dart:math';

import 'package:dart_mappable/dart_mappable.dart';

import '_entity.dart';
import '_mappable_entity.dart';
import 'value_objects/value_objects.dart';

part 'category_details.mapper.dart';

/// This class serves as a unified interface for both `CategoryDetails` and `OnThisDayCategory`.
/// - Combines multiple facets (`CategoryDetails` and `OnThisDayCategory`) into a single entity.
/// - Allows dynamic handling of both regular categories and "On This Day" events.

@MappableEntity()
class CategoryDetails extends Entity<String> with CategoryDetailsMappable {
  const CategoryDetails({
    required super.timestamp,
    this.category = 'OnThisDay',
    this.read = 0,
    this.clusters = const <Cluster>[],

    this.events = const <OnThisDayEvent>[],
  }) : super(id: category);

  /// Factory constructor for generating random test data
  factory CategoryDetails.random() {
    final Random random = Random();
    return CategoryDetails(
      timestamp: DateTime.now(),
      category: random.nextBool() ? 'OnThisDay' : 'GeneralCategory',
      read: random.nextInt(10),

      clusters: List.generate(random.nextInt(3), (_) => Cluster.random()),
      events: List.generate(random.nextInt(5), (_) => OnThisDayEvent.random()),
    );
  }

  final String category;
  final int read;

  final List<Cluster> clusters;
  final List<OnThisDayEvent> events;

  int get totalRead =>
      clusters.where((Cluster cluster) => cluster.isRead).length;
}
