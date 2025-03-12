import '../../../news_data.dart';
import '../../infra/api/news_category_api.dart';
import 'repositoy.dart';

class NewsCategoryRepositoryImpl extends Repository<NewsCategories, void> {
  NewsCategoryRepositoryImpl({required this.categoryApi});
  final NewsCategoryApi categoryApi;

  Future<NewsCategories> getCategories() async {
    final NewsCategories categories = await categoryApi.getNewsCategories();
    return categories;
  }
}
