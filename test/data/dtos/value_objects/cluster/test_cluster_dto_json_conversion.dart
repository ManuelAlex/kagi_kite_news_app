import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/data/dtos/value_objects/cluster/cluster_dto_1.dart';

import '../../_test_dto_json_conversion.dart';

void main() {
  group('ClusterDto1', () {
    testDtoJsonConversion(ClusterDto1.random(), ClusterDto1Mapper.fromMap);
  });
}
