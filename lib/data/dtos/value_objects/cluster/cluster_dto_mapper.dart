import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../domain/entities/value_objects/cluster.dart';
import '../article/article_dto_mapper.dart';
import '../domain/domain_dto_mapper.dart';
import '../perspective/perspective_dto_mapper.dart';
import '../timeline/timeline_dto_mapper.dart';
import 'cluster_dto_1.dart';
import 'cluster_dto_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[MapType<ClusterDto1, Cluster>(reverse: true)],
  includes: <AutoMapprInterface>[
    PerspectiveDtoMapper(),
    ArticleDtoMapper(),
    DomainDtoMapper(),
    TimelineDtoMapper(),
  ],
)
class ClusterDtoMapper extends $ClusterDtoMapper {
  const ClusterDtoMapper();
}
