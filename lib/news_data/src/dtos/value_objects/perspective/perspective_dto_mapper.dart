import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../domain/value_objects/perspective.dart';
import '../source.dart/source_dto_mapper.dart';
import 'perspective_dto_1.dart';
import 'perspective_dto_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[
    MapType<PerspectiveDto1, Perspective>(reverse: true),
  ],
  includes: <AutoMapprInterface>[SourceDtoMapper()],
)
class PerspectiveDtoMapper extends $PerspectiveDtoMapper {
  const PerspectiveDtoMapper();
}
