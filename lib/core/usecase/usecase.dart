import '../utils/results.dart';

// ignore: one_member_abstracts, avoid_types_as_parameter_names
abstract class UseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}

class NoParams {}
