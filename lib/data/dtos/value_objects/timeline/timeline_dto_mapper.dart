import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../domain/entities/value_objects/timeline.dart';
import 'timeline_dto_1.dart';
import 'timeline_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<TimelineDto1, Timeline>(reverse: true),
])
class TimelineDtoMapper extends $TimelineDtoMapper {
  const TimelineDtoMapper();
}
