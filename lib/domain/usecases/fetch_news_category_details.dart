import '../../core/usecase/usecase.dart';
import '../../core/utils/results.dart';
import '../domain.dart';

class FetchNewsCategoryDetails extends UseCase<CategoryDetails, String> {
  FetchNewsCategoryDetails(this.repository);
  final NewsCategoryDetailsRepository repository;

  @override
  Future<Result<CategoryDetails>> call(String fileName) async {
    if (fileName.trim().isEmpty) {
      return const Failure<CategoryDetails>(
        'Category file name cannot be empty.',
      );
    }
    return repository.getCategoryDetailsByFileName(fileName);
  }
}
