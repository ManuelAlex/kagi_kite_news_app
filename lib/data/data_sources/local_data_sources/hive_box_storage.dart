import 'package:hive_ce/hive.dart';

import '../../../presentation/providers/app_hive.dart';

enum HiveBoxStorage {
  newsCategoryDetailsBox('newsCategoryDetailsBox'),
  newsCategoriesBox('newsCategoriesBox');

  const HiveBoxStorage(this.name);
  final String name;

  bool get isOpen => appHive.isBoxOpen(name);

  Box get box => appHive.box(name);

  Future<void> close() async {
    if (isOpen) {
      await box.close();
    }
  }
}
