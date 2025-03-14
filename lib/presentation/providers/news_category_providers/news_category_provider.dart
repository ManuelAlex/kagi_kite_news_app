import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/results.dart';
import '../../../domain/entities/news_categories.dart';
import '../../../domain/usecases/fetch_news_categories.dart';
import 'fetch_news_category_provider.dart';

part 'news_category_provider.g.dart';

@riverpod
Future<Result<NewsCategories>> newsCategories(Ref ref) async {
  final FetchNewsCategories fetchNewsCategories = ref.read(
    fetchNewsCategoriesProvider,
  );
  return fetchNewsCategories(null);
}
