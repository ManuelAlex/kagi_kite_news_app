import '../../core/utils/results.dart';
import '../entities/category_details.dart';

// ignore: one_member_abstracts
abstract class NewsCategoryDetailsRepository {
  Future<Result<CategoryDetails>> getCategoryDetailsByName(String name);
}
