import 'package:flutter_test/flutter_test.dart';

import 'package:hive_ce/hive.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/data_sources.dart';

import 'package:mocktail/mocktail.dart';

// ignore: avoid_implementing_value_types
class FakeNewsCategoriesDto1 extends Fake implements NewsCategoriesDto1 {}

class MockHiveInterface extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Box<NewsCategoriesDto1> {}

void main() {
  late NewsCategoryLocalDataSource localDataSource;
  late MockHiveBox mockBox;
  late MockHiveInterface mockHive;

  // Step 2: Register the Fake class before tests run
  setUpAll(() {
    registerFallbackValue(FakeNewsCategoriesDto1());
  });

  setUp(() {
    mockHive = MockHiveInterface();
    mockBox = MockHiveBox();
    localDataSource = NewsCategoryLocalDataSource(mockHive);

    when(
      () => mockHive.openBox<NewsCategoriesDto1>('newsCategoriesBox'),
    ).thenAnswer((_) async => mockBox);

    when(() => mockBox.put(any(), any())).thenAnswer((_) async {});

    when(() => mockBox.get(any())).thenReturn(null);
  });

  group('saveNewsCategories', () {
    test('should call put on the Hive box', () async {
      // Arrange
      final NewsCategoriesDto1 dto = NewsCategoriesDto1.random();

      // Act
      await localDataSource.saveNewsCategories(dto);

      // Assert
      verify(
        () => mockHive.openBox<NewsCategoriesDto1>('newsCategoriesBox'),
      ).called(1);
      verify(() => mockBox.put('newsCategories', dto)).called(1);
    });

    test('should throw HiveStorageException when saving fails', () async {
      // Arrange
      final NewsCategoriesDto1 dto = NewsCategoriesDto1.random();
      when(() => mockBox.put(any(), any())).thenThrow(Exception());

      // Act & Assert
      expect(
        () => localDataSource.saveNewsCategories(dto),
        throwsA(isA<HiveStorageException>()),
      );
    });
  });

  group('fetchNewsCategories', () {
    test('should return Success when data exists', () async {
      // Arrange
      final NewsCategoriesDto1 dto = NewsCategoriesDto1.random();
      when(() => mockBox.get('newsCategories')).thenReturn(dto);

      // Act
      final Result<NewsCategoriesDto1> result =
          await localDataSource.fetchNewsCategories();

      // Assert
      expect(result, isA<Success<NewsCategoriesDto1>>());
      verify(() => mockBox.get('newsCategories')).called(1);
    });

    test('should return Failure when no data is found', () async {
      // Arrange
      when(() => mockBox.get('newsCategories')).thenReturn(null);

      // Act
      final Result<NewsCategoriesDto1> result =
          await localDataSource.fetchNewsCategories();

      // Assert
      expect(result, isA<Failure<NewsCategoriesDto1>>());
      verify(() => mockBox.get('newsCategories')).called(1);
    });
  });
}
