import '../../core/usecase/usecase.dart';
import '../../core/utils/results.dart';
import '../entities/category_details.dart';
import '../repositories/news_category_details_repository.dart';

class FetchNewsCategoryDetails extends UseCase<CategoryDetails, String> {
  FetchNewsCategoryDetails(this.repository);
  final NewsCategoryDetailsRepository repository;

  @override
  Future<Result<CategoryDetails>> call(String name) async {
    if (name.trim().isEmpty) {
      return const Failure<CategoryDetails>('Category name cannot be empty.');
    }
    return repository.getCategoryDetailsByName(name);
  }
}
