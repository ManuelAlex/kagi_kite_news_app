import 'dart:convert';

import '../../../../theme/src/api/api_client.dart';
import '../../../../theme/src/api/api_exception.dart' show ApiException;
import '../../../../theme/src/api/api_response.dart';

import '../../../../theme/src/api/json_map.dart';
import '../../../news_data.dart';
import '../../dtos/entities/news_categories/news_categories_dto_1.dart';
import '../../dtos/entities/news_categories/news_categories_dto_mapper.dart';
import '_base_url.dart';

class NewsCategoryApi extends ApiClient {
  NewsCategoryApi();

  Future<NewsCategories> getNewsCategories() async {
    final Uri uri = Uri.parse('$baseUrl/kite.json');

    final ApiResponse response = await get(uri);

    if (response.status.isOk) {
      final JsonMap jsonMap = jsonDecode(response.asDataString) as JsonMap;

      final NewsCategoriesDto1 dto = NewsCategoriesDto1Mapper.fromMap(jsonMap);
      final NewsCategories newsCategories = const NewsCategoriesDtoMapper()
          .convert<NewsCategoriesDto1, NewsCategories>(dto);

      return newsCategories;
    }

    throw ApiException.fromApiResponse(response);
  }
}
