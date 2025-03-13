import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/data_sources/local_data_sources/news_category_details_local_data_source.dart';

part 'news_category_details_local_data_source_provider.g.dart';

@riverpod
NewsCategoryDetailsLocalDataSource newsCategoryDetailsLocalDataSource(Ref ref) {
  return NewsCategoryDetailsLocalDataSource();
}
