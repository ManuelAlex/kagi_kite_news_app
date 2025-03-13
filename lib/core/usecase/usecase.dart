import '../utils/results.dart';

// ignore: one_member_abstracts
abstract class UseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}

class NoParams {}
