import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_1.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_mapper.dart';
import 'package:kagi_kite_news_app/domain/entities/value_objects/cluster.dart';

import '../../_test_dto_mapper_conversions.dart';

void main() {
  group('ClusterDtoMapper', () {
    testDtoMapperConversions<Cluster, ClusterDto1>(
      const ClusterDtoMapper(),
      Cluster.random(),
    );
  });
}
