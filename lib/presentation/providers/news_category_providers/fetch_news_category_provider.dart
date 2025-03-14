import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repositories/news_category_repositoy.dart';
import '../../../domain/usecases/fetch_news_categories.dart';
import 'news_category_repository_provider.dart';

part 'fetch_news_category_provider.g.dart';

@riverpod
FetchNewsCategories fetchNewsCategories(Ref ref) {
  final NewsCategoryRepository categoryRepository = ref.read(
    newsCategoryRepositoryProvider,
  );
  return FetchNewsCategories(categoryRepository);
}
