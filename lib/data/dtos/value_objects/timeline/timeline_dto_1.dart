import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';

part 'timeline_dto_1.mapper.dart';
part 'timeline_dto_1.g.dart';

@HiveType(typeId: HiveTypeIds.timelineDto)
@MappableClass()
class TimelineDto1 extends Dto with TimelineDto1Mappable {
  const TimelineDto1({required this.date, required this.content});

  /// Factory random constructor for test purposes
  factory TimelineDto1.random() => const TimelineDto1(
    date: 'October 29, 2025',
    content: 'Amazon confirms corporate restructuring plans.',
  );

  @HiveField(0)
  final String date;

  @HiveField(1)
  final String content;
}
