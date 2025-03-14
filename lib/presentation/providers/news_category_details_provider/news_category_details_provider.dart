import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/results.dart';
import '../../../domain/domain.dart';
import 'fetch_new_category_details_provider.dart';
part 'news_category_details_provider.g.dart';

@riverpod
Future<Result<CategoryDetails>> newsCategoryDetails(
  Ref ref,
  String categoryName,
) async {
  final FetchNewsCategoryDetails fetchCategoryDetails = ref.read(
    fetchNewsCategoryDetailsProvider,
  );
  return fetchCategoryDetails.call(categoryName);
}
