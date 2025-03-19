import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/utils/results.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:kagi_kite_news_app/domain/usecases/toggle_news_cluster_is_read.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsCategoryDetailsRepository extends Mock
    implements NewsCategoryDetailsRepository {}

class FakeCategoryDetails extends Fake implements CategoryDetails {}

void main() {
  late MockNewsCategoryDetailsRepository repository;
  late ToggleNewsClusterIsReadUseCase usecase;

  setUp(() {
    repository = MockNewsCategoryDetailsRepository();
    usecase = ToggleNewsClusterIsReadUseCase(repository);
    registerFallbackValue('test_category.json');
    registerFallbackValue(FakeCategoryDetails());
  });

  const String testFileName = 'test_category.json';
  const int testClusterIndex = 0;
  const bool testIsRead = true;

  final Cluster testCluster = Cluster.random().copyWith(isRead: false);

  final CategoryDetails testCategoryDetails = CategoryDetails.random().copyWith(
    clusters: [testCluster],
  );

  test(
    'should update cluster isRead status and call repository update',
    () async {
      // Arrange
      const ToggleClusterReadParam params = ToggleClusterReadParam(
        fileName: testFileName,
        isRead: testIsRead,
        clusterIndex: testClusterIndex,
      );

      // Clone the existing clusters and modify only the target cluster
      final List<Cluster> updatedClusters = List.from(
        testCategoryDetails.clusters,
      );
      updatedClusters[testClusterIndex] = updatedClusters[testClusterIndex]
          .copyWith(isRead: testIsRead);

      final CategoryDetails updatedCategoryDetails = testCategoryDetails
          .copyWith(clusters: updatedClusters);

      when(
        () => repository.getCategoryDetailsByFileName(testFileName),
      ).thenAnswer((_) async => Success(testCategoryDetails));

      when(
        () => repository.update(testFileName, updatedCategoryDetails),
      ).thenAnswer((_) async => const Success(true));

      // Act
      final Result<bool> result = await usecase.call(params);

      // Assert
      verify(
        () => repository.getCategoryDetailsByFileName(testFileName),
      ).called(1);
      verify(
        () => repository.update(testFileName, updatedCategoryDetails),
      ).called(1);

      expect(result, isA<Success<bool>>());
      expect((result as Success).data, true);
    },
  );

  test('should return Failure when fetching category details fails', () async {
    // Arrange
    const ToggleClusterReadParam params = ToggleClusterReadParam(
      fileName: testFileName,
      isRead: testIsRead,
      clusterIndex: testClusterIndex,
    );

    when(
      () => repository.getCategoryDetailsByFileName(testFileName),
    ).thenAnswer((_) async => const Failure('Unable to modify cluser isRead'));

    // Act
    final Result<bool> result = await usecase.call(params);

    // Assert
    verify(
      () => repository.getCategoryDetailsByFileName(testFileName),
    ).called(1);
    verifyNever(() => repository.update(any(), any()));

    expect(result, isA<Failure<bool>>());
    expect((result as Failure).message, 'Unable to modify cluser isRead');
  });

  test('should return Failure when repository update fails', () async {
    // Arrange
    const ToggleClusterReadParam params = ToggleClusterReadParam(
      fileName: testFileName,
      isRead: testIsRead,
      clusterIndex: testClusterIndex,
    );

    // Clone and update cluster state
    final List<Cluster> updatedClusters = List.from(
      testCategoryDetails.clusters,
    );
    updatedClusters[testClusterIndex] = updatedClusters[testClusterIndex]
        .copyWith(isRead: testIsRead);

    final CategoryDetails updatedCategoryDetails = testCategoryDetails.copyWith(
      clusters: updatedClusters,
    );

    when(
      () => repository.getCategoryDetailsByFileName(testFileName),
    ).thenAnswer((_) async => Success(testCategoryDetails));

    when(
      () => repository.update(testFileName, updatedCategoryDetails),
    ).thenAnswer((_) async => const Failure('Update failed'));

    // Act
    final Result<bool> result = await usecase.call(params);

    // Assert
    verify(
      () => repository.getCategoryDetailsByFileName(testFileName),
    ).called(1);
    verify(
      () => repository.update(testFileName, updatedCategoryDetails),
    ).called(1);

    expect(result, isA<Failure<bool>>());
    expect((result as Failure).message, 'Update failed');
  });
}
