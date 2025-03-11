import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../domain/value_objects/domain.dart';
import 'domain_dto_1.dart';
import 'domain_dto_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<DomainDto1, Domain>(reverse: true),
])
class DomainDtoMapper extends $DomainDtoMapper {
  const DomainDtoMapper();
}
