import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repositories/news_category_details_repository.dart';
import '../../../domain/usecases/fetch_news_category_details.dart';
import 'news_category_details_repository_provider.dart';

part 'fetch_new_category_details_provider.g.dart';

@riverpod
FetchNewsCategoryDetails fetchNewsCategoryDetails(Ref ref) {
  final NewsCategoryDetailsRepository categoryDetailsRepository = ref.read(
    newsCategoryDetailsRepositoryProvider,
  );
  return FetchNewsCategoryDetails(categoryDetailsRepository);
}
