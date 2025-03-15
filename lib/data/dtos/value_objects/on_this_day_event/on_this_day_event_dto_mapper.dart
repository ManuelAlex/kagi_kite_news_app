import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../domain/domain.dart';

import '../../../data.dart';
import 'on_this_day_event_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<OnThisDayEventDto1, OnThisDayEvent>(reverse: true),
])
class OnThisDayEventDtoMapper extends $OnThisDayEventDtoMapper {
  const OnThisDayEventDtoMapper();
}
