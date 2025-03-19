import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/utils/results.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsCategoryDetailsRepository extends Mock
    implements NewsCategoryDetailsRepository {}

void main() {
  late MockNewsCategoryDetailsRepository repository;
  late FetchNewsCategoryDetails usecase;

  setUp(() {
    repository = MockNewsCategoryDetailsRepository();
    usecase = FetchNewsCategoryDetails(repository);
    registerFallbackValue('test_category.json');
  });

  test(
    'should call [NewsCategoryDetailsRepository.getCategoryDetailsByFileName()] with correct parameter',
    () async {
      // Arrange
      const String fileName = 'test_category.json';
      final CategoryDetails mockCategoryDetails = CategoryDetails.random();

      when(
        () => repository.getCategoryDetailsByFileName(fileName),
      ).thenAnswer((_) async => Success(mockCategoryDetails));

      // Act
      final Result<CategoryDetails> result = await usecase.call(fileName);

      // Assert
      verify(() => repository.getCategoryDetailsByFileName(fileName)).called(1);
      expect(result, isA<Success<CategoryDetails>>());
      expect((result as Success).data, equals(mockCategoryDetails));
    },
  );

  test('should return Failure when repository fetch fails', () async {
    // Arrange
    const String fileName = 'invalid_category.json';

    when(
      () => repository.getCategoryDetailsByFileName(fileName),
    ).thenAnswer((_) async => const Failure('Error fetching category details'));

    // Act
    final Result<CategoryDetails> result = await usecase.call(fileName);

    // Assert
    expect(result, isA<Failure<CategoryDetails>>());
    expect((result as Failure).message, 'Error fetching category details');
  });

  test('should return Failure when fileName is empty', () async {
    // Act
    final Result<CategoryDetails> result = await usecase.call('');

    // Assert
    expect(result, isA<Failure<CategoryDetails>>());
    expect((result as Failure).message, 'Category file name cannot be empty.');

    // Ensure repository method is never called
    verifyNever(() => repository.getCategoryDetailsByFileName(any()));
  });
}
