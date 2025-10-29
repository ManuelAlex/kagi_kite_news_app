import 'package:hive_ce/hive.dart';

import '../../../presentation/providers/app_hive.dart';

enum HiveBoxStorage {
  newsCategoryDetailsBox('newsCategoryDetailsBox'),
  newsCategoriesBox('newsCategoriesBox');

  const HiveBoxStorage(this.name);
  final String name;

  bool get isOpen => appHive.isBoxOpen(name);

  Box get box => appHive.box(name);

  /// Returns true if the box has stored data and wasn't cleared.
  /// always use HiveTypeIds
  bool hasData(int key) {
    if (!isOpen) {
      return false;
    }

    final dynamic value = box.get(key);
    if (value == null) {
      return false;
    }

    final bool notEmpty = box.isNotEmpty;

    return notEmpty;
  }

  Future<void> close() async {
    if (isOpen) {
      await box.close();
    }
  }

  Future<void> clear() async {
    if (isOpen) {
      await box.clear();
    }
  }
}
