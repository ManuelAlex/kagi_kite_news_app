import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/data_sources/remote_data_soureces/news_category_details_remote_data_source.dart';
import '../api_client_provider.dart';

part 'news_category_details_remote_data_source_provider.g.dart';

@riverpod
NewsCategoryDetailsRemoteDataSource newsCategoryDetailsRemoteDataSource(
  Ref ref,
) {
  return NewsCategoryDetailsRemoteDataSource(ref.read(apiClientProvider));
}
