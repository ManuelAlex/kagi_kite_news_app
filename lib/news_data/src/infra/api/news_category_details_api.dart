import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../../theme/src/api/api_client.dart' show ApiClient;
import '../../../../theme/src/api/api_exception.dart';
import '../../../../theme/src/api/api_response.dart';
import '../../../../theme/src/api/json_map.dart';
import '../../../news_data.dart';
import '../../dtos/entities/category_details/category_details_dto_1.dart';
import '../../dtos/entities/category_details/category_details_dto_mapper.dart';
import '_base_url.dart';

class NewsCategoryDetailsApi extends ApiClient {
  NewsCategoryDetailsApi();

  final Map<String, CategoryDetails> _cache =
      <String, CategoryDetails>{}; // Cache for faster lookups

  /// Fetches details of a country by its name.
  Future<CategoryDetails> getCategoryDetailsByName(String name) async {
    //make sure name is lower case
    name = name.toLowerCase();
    // Return cached result if available
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    }

    try {
      final Uri uri = Uri.parse('$baseUrl/${Uri.encodeComponent(name)}.json');
      final ApiResponse response = await get(uri);
      print(response.status);
      if (!response.status.isOk) {
        throw ApiException.fromApiResponse(response);
      }

      final JsonMap jsonMap = jsonDecode(response.asDataString);

      if (jsonMap.isEmpty) {
        throw const ApiException(
          code: 'Not Found',
          message: 'Name data not found.',
        );
      }

      // Run parsing in an isolate to avoid blocking the UI
      final CategoryDetails categoryDetails = await compute(
        _parseCategoryDetails,
        jsonMap,
      );

      _cache[name] = categoryDetails; // Cache result
      return categoryDetails;
    } catch (e, stackTrace) {
      debugPrint('Error fetching Category details data: $e\n$stackTrace');
      throw const ApiException(
        code: 'FetchError',
        message: 'Failed to fetch Category details .',
      );
    }
  }

  /// Parses country list using `compute()` to offload heavy JSON processing to a separate isolate.
  static CategoryDetails _parseCategoryDetails(JsonMap jsonMap) {
    final CategoryDetailsDto1 dto = CategoryDetailsDto1Mapper.fromMap(jsonMap);
    final CategoryDetails categoryDetails = const CategoryDetailsDtoMapper()
        .convert<CategoryDetailsDto1, CategoryDetails>(dto);
    print(categoryDetails);
    return categoryDetails;
  }
}
