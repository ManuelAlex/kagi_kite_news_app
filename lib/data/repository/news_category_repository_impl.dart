import 'dart:async';

import '../../../domain/entities/news_categories.dart';
import '../../core/utils/results.dart';
import '../../domain/repositories/news_category_repositoy.dart';
import '../data_sources/local_data_sources/news_category_local_data_source.dart';
import '../data_sources/remote_data_soureces/news_category_remote_data_source.dart';
import '../dtos/news_categories/news_categories_dto_1.dart';
import '../dtos/news_categories/news_categories_dto_mapper.dart';

class NewsCategoryRepositoryImpl implements NewsCategoryRepository {
  NewsCategoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final NewsCategoryRemoteDataSource remoteDataSource;
  final NewsCategoryLocalDataSource localDataSource;

  @override
  Future<Result<NewsCategories>> getNewsCategories() async {
    final Result<NewsCategories> remoteResult =
        await remoteDataSource.fetchNewsCategories();

    if (remoteResult is Success<NewsCategories>) {
      final NewsCategories newsCategories = remoteResult.data;

      // Store locally
      final NewsCategoriesDto1 dto = const NewsCategoriesDtoMapper()
          .convert<NewsCategories, NewsCategoriesDto1>(newsCategories);

      unawaited(localDataSource.saveNewsCategories(dto));

      return Success<NewsCategories>(newsCategories);
    }

    // If remote fetch fails, load from Hive
    final Result<NewsCategoriesDto1> localResult =
        await localDataSource.fetchNewsCategories();

    if (localResult is Success<NewsCategoriesDto1>) {
      final NewsCategories newsCategories = const NewsCategoriesDtoMapper()
          .convert<NewsCategoriesDto1, NewsCategories>(localResult.data);
      return Success<NewsCategories>(newsCategories);
    }

    return const Failure<NewsCategories>(
      'Failed to fetch news categories from both remote and local sources.',
    );
  }
}
