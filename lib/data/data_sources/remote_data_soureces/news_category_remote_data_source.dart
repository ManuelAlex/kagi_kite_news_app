import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../core/network/api/api_client.dart';
import '../../../core/network/api/api_response.dart';
import '../../../core/network/api/json_map.dart';
import '../../../core/utils/results.dart';
import '../../../domain/entities/news_categories.dart';
import '../../dtos/news_categories/news_categories_dto_1.dart';
import '../../dtos/news_categories/news_categories_dto_mapper.dart';
import '_base_url.dart';

class NewsCategoryRemoteDataSource {
  const NewsCategoryRemoteDataSource(this.apiClient);
  final ApiClient apiClient;

  Future<Result<NewsCategories>> fetchNewsCategories() async {
    try {
      final Uri uri = Uri.parse('$baseUrl/kite.json');
      final ApiResponse response = await apiClient.get(uri);

      if (response.status.isOk) {
        final JsonMap jsonMap = jsonDecode(response.asDataString) as JsonMap;
        final NewsCategories newsCategories = await compute(
          _parseNewsCategories,
          jsonMap,
        );

        return Success<NewsCategories>(newsCategories);
      }

      return Failure<NewsCategories>(
        'API request failed: ${response.status}',
        erroCode: response.status.httpCode,
      );
    } catch (e) {
      return Failure<NewsCategories>('Unexpected error: $e');
    }
  }

  static NewsCategories _parseNewsCategories(JsonMap jsonMap) {
    final NewsCategoriesDto1 dto = NewsCategoriesDto1Mapper.fromMap(jsonMap);
    return const NewsCategoriesDtoMapper()
        .convert<NewsCategoriesDto1, NewsCategories>(dto);
  }
}
