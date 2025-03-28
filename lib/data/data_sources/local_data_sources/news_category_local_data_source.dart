import 'package:hive_ce/hive.dart';

import '../../../core/errors/hive_storage_exception.dart';
import '../../../core/utils/results.dart';
import '../../dtos/news_categories/news_categories_dto_1.dart';
import 'hive_box_storage.dart';

class NewsCategoryLocalDataSource {
  NewsCategoryLocalDataSource(this.hiveInterface);
  final HiveInterface hiveInterface;
  static String boxName = HiveBoxStorage.newsCategoriesBox.name;

  Future<void> saveNewsCategories(NewsCategoriesDto1 dto) async {
    try {
      final Box<NewsCategoriesDto1> box = await hiveInterface
          .openBox<NewsCategoriesDto1>(boxName);
      await box.put('newsCategories', dto);
    } catch (e) {
      throw HiveStorageException('Failed to save news categories: $e');
    }
  }

  Future<Result<NewsCategoriesDto1>> fetchNewsCategories() async {
    try {
      final Box<NewsCategoriesDto1> box = await hiveInterface
          .openBox<NewsCategoriesDto1>(boxName);
      final NewsCategoriesDto1? dto = box.get('newsCategories');

      if (dto != null) {
        return Success<NewsCategoriesDto1>(dto);
      } else {
        return const Failure<NewsCategoriesDto1>(
          'No news categories found in local storage.',
        );
      }
    } catch (e) {
      return Failure<NewsCategoriesDto1>('Failed to fetch news categories: $e');
    }
  }

  Future<void> clearOldCache() async {
    final Box<NewsCategoriesDto1> box = await hiveInterface
        .openBox<NewsCategoriesDto1>(boxName);
    final DateTime threeDaysAgo = DateTime.now().toUtc().subtract(
      const Duration(days: 3),
    );

    final List<dynamic> keysToDelete =
        box.keys.where((dynamic key) {
          final NewsCategoriesDto1? data = box.get(key);
          return data != null && data.timestamp.isBefore(threeDaysAgo);
        }).toList();

    await box.deleteAll(keysToDelete);
  }
}
