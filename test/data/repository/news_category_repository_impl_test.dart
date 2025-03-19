import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/data_sources.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/news_category_remote_data_source.dart';
import 'package:kagi_kite_news_app/data/repository/news_category_repository_impl.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockNewsCategoryRemoteDataSource extends Mock
    implements NewsCategoryRemoteDataSource {}

class MockNewsCategoryLocalDataSource extends Mock
    implements NewsCategoryLocalDataSource {}

class MockNewsCategoryDetailsRepository extends Mock
    implements NewsCategoryDetailsRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(NewsCategoriesDto1.random());
  });

  late NewsCategoryRepositoryImpl repository;
  late MockNewsCategoryRemoteDataSource mockRemoteDataSource;
  late MockNewsCategoryLocalDataSource mockLocalDataSource;
  late MockNewsCategoryDetailsRepository mockDetailsRepository;

  setUp(() {
    mockRemoteDataSource = MockNewsCategoryRemoteDataSource();
    mockLocalDataSource = MockNewsCategoryLocalDataSource();
    mockDetailsRepository = MockNewsCategoryDetailsRepository();
    repository = NewsCategoryRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      newsCategoryDetailsRepository: mockDetailsRepository,
    );
  });

  test(
    'should fetch from local when forceRefresh is recent and  false  ',
    () async {
      // Arrange

      final NewsCategoriesDto1 recentData = NewsCategoriesDto1.random()
          .copyWith(
            timestamp: DateTime.now().subtract(const Duration(hours: 2)),
          );
      when(
        () => mockLocalDataSource.fetchNewsCategories(),
      ).thenAnswer((_) async => Success(recentData));

      when(
        () => mockRemoteDataSource.fetchNewsCategories(),
      ).thenAnswer((_) async => const Failure('Was never called'));

      when(
        () => mockLocalDataSource.clearOldCache(),
      ).thenAnswer((_) async => const Failure('Was never called'));

      when(
        () => mockLocalDataSource.saveNewsCategories(any()),
      ).thenAnswer((_) async => const Failure('Was never called'));

      when(
        () => mockDetailsRepository.getCategoryDetailsByFileName(any()),
      ).thenAnswer((_) async => Success(CategoryDetails.random()));

      // Act
      final Result<NewsCategories> result =
          await repository.getNewsCategories();

      // Assert
      verify(() => mockLocalDataSource.fetchNewsCategories()).called(1);
      verifyNever(() => mockRemoteDataSource.fetchNewsCategories());
      verifyNever(() => mockLocalDataSource.saveNewsCategories(any()));
      verifyNever(
        () => mockDetailsRepository.getCategoryDetailsByFileName(any()),
      );

      expect(result, isA<Success<NewsCategories>>());
    },
  );

  test('should fetch from remote when forceRefresh is true', () async {
    // Arrange
    const bool forceRefresh = true;
    final NewsCategories mockNewsCategories = NewsCategories.random();

    when(
      () => mockLocalDataSource.fetchNewsCategories(),
    ).thenAnswer((_) async => const Failure('No cached data'));

    when(
      () => mockRemoteDataSource.fetchNewsCategories(),
    ).thenAnswer((_) async => Success(mockNewsCategories));

    when(() => mockLocalDataSource.clearOldCache()).thenAnswer((_) async {});

    when(
      () => mockLocalDataSource.saveNewsCategories(any()),
    ).thenAnswer((_) async {});

    when(
      () => mockDetailsRepository.getCategoryDetailsByFileName(any()),
    ).thenAnswer((_) async => Success(CategoryDetails.random()));

    // Act
    final Result<NewsCategories> result = await repository.getNewsCategories(
      forceRefresh: forceRefresh,
    );

    // Assert
    verify(() => mockRemoteDataSource.fetchNewsCategories()).called(1);
    verify(() => mockLocalDataSource.saveNewsCategories(any())).called(1);
    verify(() => mockLocalDataSource.clearOldCache()).called(1);
    verify(() => mockDetailsRepository.getCategoryDetailsByFileName(any()));
    expect(result, isA<Success<NewsCategories>>());
  });
}
