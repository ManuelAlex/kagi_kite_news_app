import '../../core/utils/results.dart';
import '../entities/news_categories.dart';

// ignore: one_member_abstracts
abstract class NewsCategoryRepository {
  Future<Result<NewsCategories>> getNewsCategories({bool forceRefresh = false});
}
