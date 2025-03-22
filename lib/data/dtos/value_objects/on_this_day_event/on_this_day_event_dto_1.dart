import 'package:dart_mappable/dart_mappable.dart';
import 'package:hive_ce/hive.dart';

import '../../_dto.dart';
import '../../_hive_type_id.dart';
import '../../_hook_mapper/infinity_to_double_hook.dart';
import '../../_json_mappers/datetime_json_mapper.dart';
import '../../_json_mappers/infinity_to_double_json_mapper.dart';

part 'on_this_day_event_dto_1.mapper.dart';
part 'on_this_day_event_dto_1.g.dart';

@HiveType(typeId: HiveTypeIds.onThisDayEventDto)
@MappableClass(
  includeCustomMappers: <MapperBase<Object>>[
    DatetimeJsonMapper(),
    InfinityToDoubleJsonMapper(),
  ],
)
class OnThisDayEventDto1 extends Dto with OnThisDayEventDto1Mappable {
  const OnThisDayEventDto1({
    required this.year,
    required this.content,
    required this.sortYear,
    required this.type,
  });

  /// Factory constructor for generating random test data
  factory OnThisDayEventDto1.random() => const OnThisDayEventDto1(
    year: '2021',
    content: 'A historical event happened on this day.',
    sortYear: 2021,
    type: 'event',
  );

  @HiveField(0)
  final String year;

  @HiveField(1)
  final String content;

  @HiveField(2)
  @MappableField(key: 'sort_year', hook: InfinityToDoubleHook())
  final double sortYear;

  @HiveField(3)
  final String type;
}
