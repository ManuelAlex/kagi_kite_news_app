import 'package:hive_ce/hive.dart';

import '../../../core/errors/hive_storage_exception.dart';
import '../../../core/utils/results.dart';
import '../../dtos/news_categories/news_categories_dto_1.dart';

class NewsCategoryLocalDataSource {
  static const String boxName = 'newsCategoriesBox';

  Future<void> saveNewsCategories(NewsCategoriesDto1 dto) async {
    try {
      final Box<NewsCategoriesDto1> box =
          await Hive.openBox<NewsCategoriesDto1>(boxName);
      await box.put('newsCategories', dto);
    } catch (e) {
      // we might not need to throw exception so not to crash the app
      throw HiveStorageException('Failed to save news categories: $e');
    }
  }

  Future<Result<NewsCategoriesDto1>> fetchNewsCategories() async {
    try {
      final Box<NewsCategoriesDto1> box =
          await Hive.openBox<NewsCategoriesDto1>(boxName);
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
}
