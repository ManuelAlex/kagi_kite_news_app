import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../core/core.dart';
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
      final ApiException apiFailure = ApiException.fromApiResponse(response);
      return Failure<NewsCategories>(
        apiFailure.message ?? 'API request failed: Unknown error',
        erroCode: int.tryParse(apiFailure.code),
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
