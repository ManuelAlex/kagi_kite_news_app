import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/data_sources/local_data_sources/news_category_local_data_source.dart';
import '../../../data/data_sources/remote_data_soureces/news_category_remote_data_source.dart';
import '../../../data/repository/news_category_repository_impl.dart';
import '../../../domain/repositories/news_category_details_repository.dart';
import '../../../domain/repositories/news_category_repositoy.dart';
import '../../presentation.dart';

part 'news_category_repository_provider.g.dart';

@riverpod
NewsCategoryRepository newsCategoryRepository(Ref ref) {
  final NewsCategoryRemoteDataSource remoteDataSource = ref.read(
    newsCategoryRemoteDataSourceProvider,
  );
  final NewsCategoryLocalDataSource localDataSource = ref.read(
    newsCategoryLocalDataSourceProvider,
  );
  final NewsCategoryDetailsRepository newsCategoryDetailsRepository = ref.read(
    newsCategoryDetailsRepositoryProvider,
  );
  return NewsCategoryRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
    newsCategoryDetailsRepository: newsCategoryDetailsRepository,
  );
}
