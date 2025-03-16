import '../../core/utils/results.dart';
import '../entities/category_details.dart';

// ignore: one_member_abstracts
abstract class NewsCategoryDetailsRepository {
  Future<Result<CategoryDetails>> getCategoryDetailsByFileName(String fileName);

  /// return a boolean to know wether to call setstate in ui
  /// because we are not streaming the database during isread
  Future<Result<bool>> update(String fileName, CategoryDetails entity);
}
