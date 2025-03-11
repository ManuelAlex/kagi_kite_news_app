import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../domain/value_objects/source.dart';
import 'source_dto_1.dart';
import 'source_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<SourceDto1, Source>(reverse: true),
])
class SourceDtoMapper extends $SourceDtoMapper {
  const SourceDtoMapper();
}
