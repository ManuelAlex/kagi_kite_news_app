import 'package:dart_mappable/dart_mappable.dart';

import '_mappable_value_object.dart';

part 'timeline.mapper.dart';

@MappableValueObject()
class Timeline with TimelineMappable {
  const Timeline({required this.date, required this.content});

  /// Random factory constructor for test purposes
  factory Timeline.random() => const Timeline(
    date: 'October 29, 2025',
    content: 'Sample event for testing timeline mapping.',
  );

  final String date;
  final String content;
}
