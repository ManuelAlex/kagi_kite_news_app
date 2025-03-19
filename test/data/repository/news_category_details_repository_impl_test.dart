import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/data_sources.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/news_category_details_remote_data_source.dart';
import 'package:kagi_kite_news_app/data/repository/news_category_details_repository_impl.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockNewsCategoryDetailsRemoteDataSource extends Mock
    implements NewsCategoryDetailsRemoteDataSource {}

class MockNewsCategoryDetailsLocalDataSource extends Mock
    implements NewsCategoryDetailsLocalDataSource {}

// ignore: avoid_implementing_value_types
class FakeCategoryDetailsDto1 extends Fake implements CategoryDetailsDto1 {}

void main() {
  setUpAll(() {
    registerFallbackValue(NewsCategoriesDto1.random());
    registerFallbackValue(FakeCategoryDetailsDto1()); //
  });

  late MockNewsCategoryDetailsRemoteDataSource mockRemoteDataSource;
  late MockNewsCategoryDetailsLocalDataSource mockLocalDataSource;
  late NewsCategoryDetailsRepository detailsRepository;

  setUp(() {
    mockRemoteDataSource = MockNewsCategoryDetailsRemoteDataSource();
    mockLocalDataSource = MockNewsCategoryDetailsLocalDataSource();

    detailsRepository = NewsCategoryDetailsRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });
  const String testFileName = 'test_filename.json';
  test('should fetch from local when cache is recent', () async {
    // Arrange
    final CategoryDetailsDto1 recentData = CategoryDetailsDto1.random()
        .copyWith(
          timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        ); // Recent

    when(
      () => mockLocalDataSource.fetchNewsCategoryDetails(testFileName),
    ).thenAnswer((_) async => Success(recentData));

    when(
      () => mockRemoteDataSource.getCategoryDetailsByFileName(testFileName),
    ).thenAnswer((_) async => const Failure('Was never called'));

    when(
      () => mockLocalDataSource.clearOldCacheForCategory(testFileName),
    ).thenAnswer((_) async => const Failure('Was never called'));

    when(
      () => mockLocalDataSource.updateCategoryDetails(testFileName, any()),
    ).thenAnswer((_) async => const Failure('Was never called'));

    // Act
    final Result<CategoryDetails> result = await detailsRepository
        .getCategoryDetailsByFileName(testFileName);

    // Assert
    verify(() => mockLocalDataSource.fetchNewsCategoryDetails(any())).called(1);
    verifyNever(() => mockRemoteDataSource.getCategoryDetailsByFileName(any()));
    verifyNever(() => mockLocalDataSource.clearOldCacheForCategory(any()));
    verifyNever(() => mockLocalDataSource.updateCategoryDetails(any(), any()));

    expect(result, isA<Success<CategoryDetails>>());
  });

  test('should fetch from remote when cache is outdated', () async {
    // Arrange
    final CategoryDetails mockNewsCategoryDetail = CategoryDetails.random();

    final CategoryDetailsDto1 oldData = CategoryDetailsDto1.random().copyWith(
      timestamp: DateTime.now().subtract(const Duration(hours: 10)),
    ); // Too old

    when(
      () => mockLocalDataSource.fetchNewsCategoryDetails(testFileName),
    ).thenAnswer((_) async => Success(oldData)); // Outdated data

    when(
      () => mockRemoteDataSource.getCategoryDetailsByFileName(testFileName),
    ).thenAnswer((_) async => Success(mockNewsCategoryDetail));

    when(
      () => mockLocalDataSource.clearOldCacheForCategory(testFileName),
    ).thenAnswer((_) async {});

    when(
      () => mockLocalDataSource.updateCategoryDetails(testFileName, any()),
    ).thenAnswer((_) async => const Success(true));

    // Act
    final Result<CategoryDetails> result = await detailsRepository
        .getCategoryDetailsByFileName(testFileName);

    // Assert
    verify(
      () => mockRemoteDataSource.getCategoryDetailsByFileName(testFileName),
    ).called(1);
    verify(
      () => mockLocalDataSource.updateCategoryDetails(testFileName, any()),
    ).called(1);
    verify(() => mockLocalDataSource.clearOldCacheForCategory(testFileName));
    expect(result, isA<Success<CategoryDetails>>());
  });
}
