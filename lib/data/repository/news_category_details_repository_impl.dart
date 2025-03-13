import 'dart:async';

import '../../core/utils/results.dart';
import '../../domain/entities/category_details.dart';
import '../../domain/repositories/news_category_details_repository.dart';
import '../data_sources/local_data_sources/news_category_details_local_data_source.dart';
import '../data_sources/remote_data_soureces/news_category_details_remote_data_source.dart';
import '../dtos/category_details/category_details_dto_1.dart';
import '../dtos/category_details/category_details_dto_mapper.dart';

class NewsCategoryDetailsRepositoryImpl
    implements NewsCategoryDetailsRepository {
  NewsCategoryDetailsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final NewsCategoryDetailsRemoteDataSource remoteDataSource;
  final NewsCategoryDetailsLocalDataSource localDataSource;

  @override
  Future<Result<CategoryDetails>> getCategoryDetailsByName(String name) async {
    final Result<CategoryDetails> remoteResult = await remoteDataSource
        .getCategoryDetailsByName(name);

    if (remoteResult is Success<CategoryDetails>) {
      final CategoryDetails newsCategories = remoteResult.data;

      // Store locally
      final CategoryDetailsDto1 dto = const CategoryDetailsDtoMapper()
          .convert<CategoryDetails, CategoryDetailsDto1>(newsCategories);

      unawaited(localDataSource.saveNewsCategoryDetails(name, dto));

      return Success<CategoryDetails>(newsCategories);
    }

    // If remote fetch fails, load from Hive
    final Result<CategoryDetailsDto1> localResult = await localDataSource
        .fetchNewsCategoryDetails(name);

    if (localResult is Success<CategoryDetailsDto1>) {
      final CategoryDetails categoryDetails = const CategoryDetailsDtoMapper()
          .convert<CategoryDetailsDto1, CategoryDetails>(localResult.data);
      return Success<CategoryDetails>(categoryDetails);
    }

    return const Failure<CategoryDetails>(
      'Failed to fetch news categories from both remote and local sources.',
    );
  }
}
