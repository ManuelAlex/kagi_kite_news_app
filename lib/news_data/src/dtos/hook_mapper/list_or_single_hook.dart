import 'package:dart_mappable/dart_mappable.dart';

import '../json_mappers/list_or_single_json_mapper.dart';

class ListOrSingleHook<T> extends MappingHook {
  const ListOrSingleHook();

  @override
  Object? beforeDecode(Object? value) {
    return ListOrSingleJsonMapper<T>().decode(value!);
  }

  @override
  Object? beforeEncode(Object? value) {
    return value;
  }
}
