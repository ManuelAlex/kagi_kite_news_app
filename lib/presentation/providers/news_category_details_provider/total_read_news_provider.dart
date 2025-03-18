import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/results.dart';

import '../../../domain/domain.dart';
import '../../presentation.dart';
import '../news_category_providers/news_category_provider.dart';

part 'total_read_news_provider.g.dart';

@riverpod
int? totalReadNews(Ref ref) {
  final categoriesResult = ref.watch(newsCategoriesProvider);

  return categoriesResult.when(
    data: (Result<NewsCategories> data) {
      if (data is Success<NewsCategories>) {
        final categories = data.data.categories;

        int totalRead = 0;
        bool hasLoadingState = false;

        for (final category in categories) {
          final categoryDetailsResult = ref.watch(
            newsCategoryDetailsProvider(category.file),
          );

          categoryDetailsResult.when(
            data: (Result<CategoryDetails> detailsResult) {
              if (detailsResult is Success<CategoryDetails>) {
                totalRead +=
                    detailsResult.data.clusters
                        .where((article) => article.isRead)
                        .length;
              }
            },
            error: (_, __) => null,
            loading: () => hasLoadingState = true,
          );
        }

        return hasLoadingState ? null : totalRead;
      }
      return null;
    },
    error: (_, __) => null,
    loading: () => null,
  );
}
