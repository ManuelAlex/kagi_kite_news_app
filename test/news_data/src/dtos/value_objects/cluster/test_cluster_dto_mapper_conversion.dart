import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/news_data/src/domain/value_objects/cluster.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/cluster/cluster_dto_1.dart';
import 'package:kagi_kite_news_app/news_data/src/dtos/value_objects/cluster/cluster_dto_mapper.dart';
import 'package:kagi_kite_news_app/theme/theme.dart';

void main() {
  group('ClusterDtoMapper', () {
    testDtoMapperConversions<Cluster, ClusterDto1>(
      const ClusterDtoMapper(),
      Cluster.random(),
    );
  });
}
