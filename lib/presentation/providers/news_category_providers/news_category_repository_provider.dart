import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/news_category_repository_impl.dart';
import '../../../domain/repositories/news_category_repositoy.dart';
import 'news_category_local_data_source_provider.dart';
import 'news_category_remote_data_source_provider.dart';

part 'news_category_repository_provider.g.dart';

@riverpod
NewsCategoryRepository newsCategoryRepository(Ref ref) {
  return NewsCategoryRepositoryImpl(
    remoteDataSource: ref.read(newsCategoryRemoteDataSourceProvider),
    localDataSource: ref.read(newsCategoryLocalDataSourceProvider),
  );
}
