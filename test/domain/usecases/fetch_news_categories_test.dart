import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/utils/results.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsCategoryRepository extends Mock
    implements NewsCategoryRepository {}

void main() {
  late MockNewsCategoryRepository repository;
  late FetchNewsCategories usecase;

  setUp(() {
    repository = MockNewsCategoryRepository();
    usecase = FetchNewsCategories(repository);
    registerFallbackValue(false);
  });

  test(
    'should call [NewsCategoryRepository.getNewsCategories()] with correct parameter',
    () async {
      // Arrange
      const bool forceRefresh = false;
      final NewsCategories mockNewsCategories = NewsCategories.random();
      when(
        () => repository.getNewsCategories(
          forceRefresh: any(named: 'forceRefresh'),
        ),
      ).thenAnswer((_) async => Success(mockNewsCategories));

      // Act
      final Result<NewsCategories> result = await usecase.call(forceRefresh);

      // Assert
      verify(() => repository.getNewsCategories()).called(1);
      expect(result, isA<Success<NewsCategories>>());
    },
  );

  test('should return Failure when repository fetch fails', () async {
    // Arrange
    const bool forceRefresh = true;
    when(
      () => repository.getNewsCategories(
        forceRefresh: any(named: 'forceRefresh'),
      ),
    ).thenAnswer((_) async => const Failure('Error fetching news categories'));

    // Act
    final Result<NewsCategories> result = await usecase.call(forceRefresh);

    // Assert
    expect(result, isA<Failure<NewsCategories>>());
    expect((result as Failure).message, 'Error fetching news categories');
    verify(
      () => repository.getNewsCategories(forceRefresh: forceRefresh),
    ).called(1);
  });
}
