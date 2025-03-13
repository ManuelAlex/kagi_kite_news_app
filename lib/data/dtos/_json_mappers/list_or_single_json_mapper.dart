import 'package:dart_mappable/dart_mappable.dart';

class ListOrSingleJsonMapper<T> extends SimpleMapper<List<T>> {
  const ListOrSingleJsonMapper();

  @override
  List<T> decode(Object value) {
    if (value is List) {
      return value.cast<T>(); // Case: Already a list
    } else if (value is T) {
      return <T>[value as T];
    } else if (value is String && T == String) {
      return <T>[value as T];
    }
    throw MapperException.unexpectedType(value.runtimeType, 'List<$T> or $T');
  }

  @override
  Object encode(List<T> self) => self;
}
