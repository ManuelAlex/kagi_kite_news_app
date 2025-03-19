import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/data_sources/local_data_sources/news_category_local_data_source.dart';
import '../app_hive.dart';

part 'news_category_local_data_source_provider.g.dart';

@riverpod
NewsCategoryLocalDataSource newsCategoryLocalDataSource(Ref ref) {
  return NewsCategoryLocalDataSource(appHive);
}
