import 'package:flutter_test/flutter_test.dart';

import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:kagi_kite_news_app/presentation/providers/news_category_providers/force_refresh_provider.dart';
import 'package:kagi_kite_news_app/presentation/providers/providers.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';

// Mock FetchNewsCategories Use Case
class MockFetchNewsCategories extends Mock implements FetchNewsCategories {}

void main() {
  late ProviderContainer container;
  late MockFetchNewsCategories mockFetchNewsCategories;

  setUp(() {
    mockFetchNewsCategories = MockFetchNewsCategories();

    container = ProviderContainer(
      overrides: [
        fetchNewsCategoriesProvider.overrideWithValue(mockFetchNewsCategories),
        forceRefreshProvider.overrideWith(ForceRefresh.new),
        newsCategoriesProvider.overrideWith((ref) async {
          return ref.read(fetchNewsCategoriesProvider)(
            ref.read(forceRefreshProvider),
          );
        }),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('should return fetched NewsCategories when successful', () async {
    // Arrange
    final NewsCategories testCategories = NewsCategories.random();
    when(
      () => mockFetchNewsCategories(false),
    ).thenAnswer((_) async => Success(testCategories));

    // Act
    final Result<NewsCategories> result = await container.read(
      newsCategoriesProvider.future,
    );

    // Assert
    expect(result, isA<Success<NewsCategories>>());
    expect((result as Success).data, equals(testCategories));

    verify(() => mockFetchNewsCategories(false)).called(1);
  });
  test('should force refresh when forceRefreshProvider is true', () async {
    // Arrange
    final NewsCategories testCategories = NewsCategories.random();

    // Trigger force refresh
    container.read(forceRefreshProvider.notifier).triggerRefresh();

    when(
      () => mockFetchNewsCategories(true),
    ).thenAnswer((_) async => Success(testCategories));

    // Keep provider alive until completion
    final Future<Result<NewsCategories>> future = container.read(
      newsCategoriesProvider.future,
    );

    // Act
    final Result<NewsCategories> result = await future;

    // Assert
    expect(result, isA<Success<NewsCategories>>());
    expect((result as Success).data, equals(testCategories));

    verify(() => mockFetchNewsCategories(true)).called(1);

    // Ensure forceRefreshProvider was reset
    await Future.delayed(Duration.zero);
    expect(container.read(forceRefreshProvider), isFalse);
  });

  test('should return failure when fetching fails', () async {
    // Arrange
    when(
      () => mockFetchNewsCategories(false),
    ).thenAnswer((_) async => const Failure<NewsCategories>('Network error'));

    // Act
    final Result<NewsCategories> result = await container.read(
      newsCategoriesProvider.future,
    );

    // Assert
    expect(result, isA<Failure<NewsCategories>>());
    expect((result as Failure).message, equals('Network error'));

    verify(() => mockFetchNewsCategories(false)).called(1);
  });
}
