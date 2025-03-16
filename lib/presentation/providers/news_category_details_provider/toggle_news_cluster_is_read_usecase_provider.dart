import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/domain.dart';
import '../../../domain/usecases/toggle_news_cluster_is_read.dart';
import '../providers.dart';

part 'toggle_news_cluster_is_read_usecase_provider.g.dart';

@riverpod
ToggleNewsClusterIsReadUseCase toggleNewsClusterIsReadUseCase(Ref ref) {
  final NewsCategoryDetailsRepository categoryDetailsRepository = ref.read(
    newsCategoryDetailsRepositoryProvider,
  );
  return ToggleNewsClusterIsReadUseCase(categoryDetailsRepository);
}
