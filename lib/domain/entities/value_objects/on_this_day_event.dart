import 'package:dart_mappable/dart_mappable.dart';

import '../../domain.dart';

part 'on_this_day_event.mapper.dart';

@MappableValueObject()
class OnThisDayEvent with OnThisDayEventMappable {
  const OnThisDayEvent({
    required this.year,
    required this.content,
    required this.sortYear,
    required this.type,
  });

  /// Used for testing purposes
  factory OnThisDayEvent.random() => const OnThisDayEvent(
    year: '2021',
    content: 'Sample historical event content.',
    sortYear: 2021.0,
    type: 'event',
  );

  final String year;
  final String content;
  final double sortYear;
  final String type;
}
