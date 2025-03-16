import '../../core/usecase/usecase.dart';
import '../../core/utils/results.dart';
import '../domain.dart';

class ToggleNewsClusterIsReadUseCase
    extends UseCase<bool, ToggleClusterReadParam> {
  ToggleNewsClusterIsReadUseCase(this.repository);

  final NewsCategoryDetailsRepository repository;

  @override
  Future<Result<bool>> call(ToggleClusterReadParam params) async {
    final Result<CategoryDetails> repoResult = await repository
        .getCategoryDetailsByFileName(params.fileName);

    if (repoResult.isSuccess) {
      final Success<CategoryDetails> categoryDetailsSuccess =
          repoResult as Success<CategoryDetails>;
      final CategoryDetails categoryDetails = categoryDetailsSuccess.data;

      final List<Cluster> modifiedClusters = List.from(
        categoryDetails.clusters,
      );
      modifiedClusters[params.clusterIndex] =
          modifiedClusters[params.clusterIndex].copyWith(isRead: params.isRead);

      final CategoryDetails modifiedEntity = categoryDetails.copyWith(
        clusters: modifiedClusters,
      );

      final Result<bool> updateResult = await repository.update(
        params.fileName,
        modifiedEntity,
      );

      return updateResult;
    }

    return const Failure<bool>('Unable to modify cluser isRead');
  }
}

class ToggleClusterReadParam {
  const ToggleClusterReadParam({
    required this.fileName,
    required this.isRead,
    required this.clusterIndex,
  });
  final bool isRead;
  final String fileName;
  final int clusterIndex;
}
