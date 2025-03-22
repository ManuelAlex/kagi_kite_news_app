import 'dart:async';

import '../../core/core.dart';
import '../../domain/domain.dart';

import '../data_sources/local_data_sources/news_category_details_local_data_source.dart';
import '../data_sources/remote_data_soureces/news_category_details_remote_data_source.dart';

import '../dtos/dtos.dart';

class NewsCategoryDetailsRepositoryImpl
    implements NewsCategoryDetailsRepository {
  NewsCategoryDetailsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final NewsCategoryDetailsRemoteDataSource remoteDataSource;
  final NewsCategoryDetailsLocalDataSource localDataSource;

  @override
  Future<Result<CategoryDetails>> getCategoryDetailsByFileName(
    String fileName,
  ) async {
    // Load from local storage first
    final Result<CategoryDetailsDto1> localResult = await localDataSource
        .fetchNewsCategoryDetails(fileName);

    if (localResult is Success<CategoryDetailsDto1>) {
      final CategoryDetailsDto1 localData = localResult.data;

      // If cached data is from today, return it
      if (localData.timestamp.isRecent) {
        final CategoryDetails cachedCategoryDetails =
            const CategoryDetailsDtoMapper()
                .convert<CategoryDetailsDto1, CategoryDetails>(localData);

        return Success<CategoryDetails>(cachedCategoryDetails);
      }
    }

    // If cache is outdated, fetch from API
    final Result<CategoryDetails> remoteResult = await remoteDataSource
        .getCategoryDetailsByFileName(fileName);

    if (remoteResult is Success<CategoryDetails>) {
      // Only clear old cache and save if the remote fetch is successful
      unawaited(localDataSource.clearOldCacheForCategory(fileName));

      final CategoryDetails categoryDetails = remoteResult.data;

      // Convert and update timestamp before saving
      final CategoryDetailsDto1 dto = const CategoryDetailsDtoMapper()
          .convert<CategoryDetails, CategoryDetailsDto1>(categoryDetails)
      // .copyWith(timestamp: DateTime.now().toUtc())
      ;

      // Save updated category details locally
      await localDataSource.updateCategoryDetails(fileName, dto);

      // Retrieve the newly stored data from local storage
      final Result<CategoryDetailsDto1> updatedLocalResult =
          await localDataSource.fetchNewsCategoryDetails(fileName);

      if (updatedLocalResult is Success<CategoryDetailsDto1>) {
        final CategoryDetails updatedCategoryDetails =
            const CategoryDetailsDtoMapper()
                .convert<CategoryDetailsDto1, CategoryDetails>(
                  updatedLocalResult.data,
                );

        return Success<CategoryDetails>(updatedCategoryDetails);
      }
    }

    return Failure<CategoryDetails>(
      'Failed to fetch category details for "$fileName" from both remote and local sources.',
    );
  }

  @override
  Future<Result<bool>> update(String fileName, CategoryDetails entity) async {
    try {
      final CategoryDetailsDto1 updatedDto = const CategoryDetailsDtoMapper()
          .convert<CategoryDetails, CategoryDetailsDto1>(entity);

      final Result<bool> success = await localDataSource.updateCategoryDetails(
        fileName,
        updatedDto,
      );

      return success;
    } catch (e) {
      return Failure<bool>('Error updating category details in repository: $e');
    }
  }
}
