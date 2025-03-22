import 'package:dart_mappable/dart_mappable.dart';

class InfinityToDoubleJsonMapper extends SimpleMapper<double> {
  const InfinityToDoubleJsonMapper();

  @override
  double decode(Object value) {
    if (value is num) {
      return value.toDouble();
    }
    if (value == 'Infinity' || value == double.infinity) {
      return double.maxFinite;
    }
    if (value == '-Infinity' || value == double.negativeInfinity) {
      return -double.maxFinite;
    }
    if (value is String) {
      final double? parsedValue = double.tryParse(value);
      if (parsedValue != null) {
        return parsedValue;
      }
    }

    throw MapperException.unexpectedType(value.runtimeType, 'double');
  }

  @override
  Object encode(double value) {
    return value;
  }
}
