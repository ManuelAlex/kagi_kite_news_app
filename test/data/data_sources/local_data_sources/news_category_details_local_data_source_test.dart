import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/data_sources.dart';
import 'package:mocktail/mocktail.dart';

// Fake and Mock Classes
// ignore: avoid_implementing_value_types
class FakeCategoryDetailsDto1 extends Fake implements CategoryDetailsDto1 {}

class MockHiveInterface extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Box<CategoryDetailsDto1> {}

void main() {
  late NewsCategoryDetailsLocalDataSource localDataSource;
  late MockHiveInterface mockHive;
  late MockHiveBox mockBox;

  setUpAll(() {
    registerFallbackValue(FakeCategoryDetailsDto1());
  });

  setUp(() {
    mockHive = MockHiveInterface();
    mockBox = MockHiveBox();
    localDataSource = NewsCategoryDetailsLocalDataSource(mockHive);

    when(
      () => mockHive.openBox<CategoryDetailsDto1>(any()),
    ).thenAnswer((_) async => mockBox);
    when(() => mockBox.put(any(), any())).thenAnswer((_) async {});
  });

  group('saveNewsCategoryDetails', () {
    test('should call put on the Hive box', () async {
      final CategoryDetailsDto1 dto = CategoryDetailsDto1.random();
      const String categoryName = 'technology';

      await localDataSource.saveNewsCategoryDetails(categoryName, dto);

      verify(
        () => mockHive.openBox<CategoryDetailsDto1>('newsCategoryDetailsBox'),
      ).called(1);
      verify(() => mockBox.put(categoryName.toLowerCase(), dto)).called(1);
    });

    test('should throw HiveStorageException when saving fails', () async {
      final CategoryDetailsDto1 dto = CategoryDetailsDto1.random();
      when(() => mockBox.put(any(), any())).thenThrow(Exception());

      expect(
        () => localDataSource.saveNewsCategoryDetails('technology', dto),
        throwsA(isA<HiveStorageException>()),
      );
    });
  });

  group('fetchNewsCategoryDetails', () {
    test('should return Success when data exists', () async {
      final CategoryDetailsDto1 dto = CategoryDetailsDto1.random();
      const String categoryName = 'sports';
      when(() => mockBox.get(categoryName.toLowerCase())).thenReturn(dto);

      final Result<CategoryDetailsDto1> result = await localDataSource
          .fetchNewsCategoryDetails(categoryName);

      expect(result, isA<Success<CategoryDetailsDto1>>());
      verify(() => mockBox.get(categoryName.toLowerCase())).called(1);
    });

    test('should return Failure when no data is found', () async {
      when(() => mockBox.get(any())).thenReturn(null);

      final Result<CategoryDetailsDto1> result = await localDataSource
          .fetchNewsCategoryDetails('politics');

      expect(result, isA<Failure<CategoryDetailsDto1>>());
      verify(() => mockBox.get('politics')).called(1);
    });
  });

  group('clearOldCacheForCategory', () {
    test('should delete cache if older than 3 days', () async {
      final DateTime oldTimestamp = DateTime.now().toUtc().subtract(
        const Duration(days: 4),
      );
      final CategoryDetailsDto1 oldData = CategoryDetailsDto1.random().copyWith(
        timestamp: oldTimestamp,
      );
      when(() => mockBox.get('science')).thenReturn(oldData);
      when(() => mockBox.delete('science')).thenAnswer((_) async {});

      await localDataSource.clearOldCacheForCategory('science');

      verify(() => mockBox.delete('science')).called(1);
    });
  });

  group('updateCategoryDetails', () {
    test('should update category details successfully', () async {
      final CategoryDetailsDto1 newDto = CategoryDetailsDto1.random();
      const String categoryName = 'health';
      when(() => mockBox.delete(any())).thenAnswer((_) async {});
      when(() => mockBox.put(any(), any())).thenAnswer((_) async {});

      final Result<bool> result = await localDataSource.updateCategoryDetails(
        categoryName,
        newDto,
      );

      expect(result, isA<Success<bool>>());
      verify(() => mockBox.delete(categoryName.toLowerCase())).called(1);
      verify(() => mockBox.put(categoryName.toLowerCase(), newDto)).called(1);
    });
  });
}
