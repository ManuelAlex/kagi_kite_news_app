import 'package:hive_ce/hive.dart';

import '../../../core/errors/hive_storage_exception.dart';
import '../../../core/utils/results.dart';
import '../../dtos/category_details/category_details_dto_1.dart';

class NewsCategoryDetailsLocalDataSource {
  static const String boxName = 'newsCategoryDetailsBox';

  /// Saves category details in Hive with the category name as the key.
  Future<void> saveNewsCategoryDetails(
    String name,
    CategoryDetailsDto1 dto,
  ) async {
    try {
      final Box<CategoryDetailsDto1> box =
          await Hive.openBox<CategoryDetailsDto1>(boxName);
      await box.put(name.toLowerCase(), dto);
    } catch (e) {
      throw HiveStorageException('Failed to save category details: $e');
    }
  }

  /// Fetches category details by name.
  Future<Result<CategoryDetailsDto1>> fetchNewsCategoryDetails(
    String name,
  ) async {
    try {
      final Box<CategoryDetailsDto1> box =
          await Hive.openBox<CategoryDetailsDto1>(boxName);
      final CategoryDetailsDto1? dto = box.get(name.toLowerCase());

      if (dto != null) {
        return Success<CategoryDetailsDto1>(dto);
      } else {
        return Failure<CategoryDetailsDto1>(
          'No category details found for "$name" in local storage.',
        );
      }
    } catch (e) {
      return Failure<CategoryDetailsDto1>(
        'Failed to fetch category details for "$name": $e',
      );
    }
  }

  Future<void> clearOldCacheForCategory(String name) async {
    try {
      final Box<CategoryDetailsDto1> box =
          await Hive.openBox<CategoryDetailsDto1>(boxName);
      final DateTime threeDaysAgo = DateTime.now().toUtc().subtract(
        const Duration(days: 3),
      );

      final CategoryDetailsDto1? data = box.get(name.toLowerCase());
      if (data != null && data.timestamp.isBefore(threeDaysAgo)) {
        await box.delete(name.toLowerCase());
      }
    } catch (e) {
      throw HiveStorageException('Failed to clear old cache for "$name": $e');
    }
  }

  Future<Result<bool>> updateCategoryDetails(
    String categoryName,
    CategoryDetailsDto1 updatedDto,
  ) async {
    try {
      final Box<CategoryDetailsDto1> box =
          await Hive.openBox<CategoryDetailsDto1>(boxName);

      final String key = categoryName.toLowerCase();

      await box.delete(key);

      await box.put(key, updatedDto);

      return const Success(true);
    } catch (e) {
      return Failure<bool>('Failed to update category details: $e');
    }
  }
}
