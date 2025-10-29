import 'dart:async';

import '../../core/utils/is_recent.dart';
import '../../core/utils/results.dart';
import '../../domain/domain.dart';
import '../data.dart';
import '../data_sources/local_data_sources/hive_box_storage.dart';
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
  final NewsCategoryDetailsRepository newsCategoryDetailsRepository;

  @override
  Future<Result<NewsCategories>> getNewsCategories({
    bool forceRefresh = false,
  }) async {
    final bool hasLocalData = HiveBoxStorage.newsCategoriesBox.hasData(
      HiveTypeIds.newCategoriesDto,
    );

    // Load from local storage first
    final Result<NewsCategoriesDto1> localResult =
        await localDataSource.fetchNewsCategories();

    if (localResult is Success<NewsCategoriesDto1>) {
      final localData = localResult.data;

      // Only use cache if box has data AND timestamp is recent
      if (hasLocalData && localData.timestamp.isRecent && !forceRefresh) {
        final cached = const NewsCategoriesDtoMapper()
            .convert<NewsCategoriesDto1, NewsCategories>(localData);
        return Success<NewsCategories>(cached);
      }
    }

    //  Fetch from remote if local is missing or stale

    final remoteResult = await remoteDataSource.fetchNewsCategories();

    if (remoteResult is Success<NewsCategories>) {
      unawaited(localDataSource.clearOldCache());
      final newsCategories = remoteResult.data;

      //  Save updated DTO with timestamp
      final dto = const NewsCategoriesDtoMapper()
          .convert<NewsCategories, NewsCategoriesDto1>(newsCategories)
          .copyWith(timestamp: DateTime.now().toUtc());

      await localDataSource.saveNewsCategories(dto);

      // Trigger preload
      await _preloadCategoryDetails(newsCategories.categories);

      return Success<NewsCategories>(newsCategories);
    }

    return const Failure<NewsCategories>(
      'Failed to fetch news categories from both remote and local sources.',
    );
  }

  /// 🚀 Preload category details for all categories
  Future<void> _preloadCategoryDetails(List<Category> categories) async {
    if (categories.isEmpty) {
      return;
    }

    final futures =
        categories.map((category) async {
          final result = await newsCategoryDetailsRepository
              .getCategoryDetailsByFileName(category.file);

          return result;
        }).toList();

    await Future.wait(futures);
  }
}
