import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/results.dart';
import '../../../domain/entities/news_categories.dart';
import '../../../domain/usecases/fetch_news_categories.dart';
import 'fetch_news_category_provider.dart';
import 'force_refresh_provider.dart';

part 'news_category_provider.g.dart';

@riverpod
Future<Result<NewsCategories>> newsCategories(Ref ref) async {
  final bool forceRefresh = ref.watch(forceRefreshProvider);

  final FetchNewsCategories fetchNewsCategories = ref.read(
    fetchNewsCategoriesProvider,
  );

  final Result<NewsCategories> result = await fetchNewsCategories(forceRefresh);

  // Reset force refresh to prevent unnecessary reloads
  ref.read(forceRefreshProvider.notifier).reset();

  return result;
}
