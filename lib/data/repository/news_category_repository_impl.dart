import 'dart:async';

import '../../core/utils/is_recent.dart';
import '../../core/utils/results.dart';
import '../../domain/domain.dart';
import '../data.dart';
import '../data_sources/local_data_sources/news_category_local_data_source.dart';
import '../data_sources/remote_data_soureces/news_category_remote_data_source.dart';

class NewsCategoryRepositoryImpl implements NewsCategoryRepository {
  NewsCategoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.newsCategoryDetailsRepository,
  });

  final NewsCategoryRemoteDataSource remoteDataSource;
  final NewsCategoryLocalDataSource localDataSource;
  final NewsCategoryDetailsRepository
  newsCategoryDetailsRepository; // Used for preloading

  @override
  Future<Result<NewsCategories>> getNewsCategories({
    bool forceRefresh = false,
  }) async {
    // Load from local storage first
    final Result<NewsCategoriesDto1> localResult =
        await localDataSource.fetchNewsCategories();
    if (localResult is Success<NewsCategoriesDto1>) {
      final NewsCategoriesDto1 localData = localResult.data;

      if (localData.timestamp.isRecent && !forceRefresh) {
        final NewsCategories cachedNewsCategories =
            const NewsCategoriesDtoMapper()
                .convert<NewsCategoriesDto1, NewsCategories>(localData);

        return Success<NewsCategories>(cachedNewsCategories);
      }
    }

    // Fetch from remote if cache is outdated
    final Result<NewsCategories> remoteResult =
        await remoteDataSource.fetchNewsCategories();

    if (remoteResult is Success<NewsCategories>) {
      unawaited(localDataSource.clearOldCache());

      final NewsCategories newsCategories = remoteResult.data;

      // Convert & update timestamp before saving
      final NewsCategoriesDto1 dto = const NewsCategoriesDtoMapper()
          .convert<NewsCategories, NewsCategoriesDto1>(newsCategories)
      //.copyWith(timestamp: DateTime.now().toUtc())
      ;

      await localDataSource.saveNewsCategories(dto);

      // Trigger Preload for category details
      await _preloadCategoryDetails(newsCategories.categories);

      return Success<NewsCategories>(newsCategories);
    }

    return const Failure<NewsCategories>(
      'Failed to fetch news categories from both remote and local sources.',
    );
  }

  Future<void> _preloadCategoryDetails(List<Category> categories) async {
    for (final Category category in categories) {
      await newsCategoryDetailsRepository.getCategoryDetailsByFileName(
        category.file,
      );
    }
  }
}
