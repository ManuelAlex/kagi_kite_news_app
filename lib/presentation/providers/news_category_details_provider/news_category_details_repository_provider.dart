import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/news_category_details_repository_impl.dart';
import '../../../domain/repositories/news_category_details_repository.dart';
import 'news_category_details_local_data_source_provider.dart';
import 'news_category_details_remote_data_source_provider.dart';

part 'news_category_details_repository_provider.g.dart';

@riverpod
NewsCategoryDetailsRepository newsCategoryDetailsRepository(Ref ref) {
  return NewsCategoryDetailsRepositoryImpl(
    remoteDataSource: ref.read(newsCategoryDetailsRemoteDataSourceProvider),
    localDataSource: ref.read(newsCategoryDetailsLocalDataSourceProvider),
  );
}
