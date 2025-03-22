import 'package:dart_mappable/dart_mappable.dart';

import '../_json_mappers/infinity_to_double_json_mapper.dart';

class InfinityToDoubleHook extends MappingHook {
  const InfinityToDoubleHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value == null) {
      return null;
    }
    return const InfinityToDoubleJsonMapper().decode(value);
  }

  @override
  Object? beforeEncode(Object? value) {
    if (value is double) {
      return value;
    }
    return value;
  }
}
