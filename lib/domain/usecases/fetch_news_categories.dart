import '../../core/usecase/usecase.dart';
import '../../core/utils/results.dart';
import '../entities/news_categories.dart';
import '../repositories/news_category_repositoy.dart';

class FetchNewsCategories extends UseCase<NewsCategories, bool> {
  FetchNewsCategories(this.repository);
  final NewsCategoryRepository repository;

  @override
  Future<Result<NewsCategories>> call(bool forceRefresh) async {
    return repository.getNewsCategories(forceRefresh: forceRefresh);
  }
}
