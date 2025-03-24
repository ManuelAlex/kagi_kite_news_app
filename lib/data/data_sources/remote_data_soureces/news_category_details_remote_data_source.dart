import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../core/network/api/api_client.dart';
import '../../../core/network/api/api_exception.dart';
import '../../../core/network/api/api_response.dart';
import '../../../core/network/api/json_map.dart';
import '../../../core/utils/results.dart';
import '../../../domain/domain.dart';
import '../../dtos/dtos.dart';
import '_base_url.dart';

class NewsCategoryDetailsRemoteDataSource {
  const NewsCategoryDetailsRemoteDataSource(this.apiClient);
  final ApiClient apiClient;

  Future<Result<CategoryDetails>> getCategoryDetailsByFileName(
    String fileName,
  ) async {
    final Uri uri = Uri.parse('$baseUrl/$fileName');
    final ApiResponse response = await apiClient.get(uri);

    if (!response.status.isOk) {
      final ApiException apiFailure = ApiException.fromApiResponse(response);
      return Failure<CategoryDetails>(
        apiFailure.message ?? 'Some unknown Api response error ',
        erroCode: int.tryParse(apiFailure.code),
      );
    }

    final String safeJson = _preprocessJson(response.asDataString);
    final JsonMap jsonMap = jsonDecode(safeJson);

    if (jsonMap.isEmpty) {
      return const Failure<CategoryDetails>('Category details not found.');
    }

    final CategoryDetails categoryDetails = await compute(
      _parseCategoryDetails,
      jsonMap,
    );

    return Success<CategoryDetails>(categoryDetails);
  }

  static CategoryDetails _parseCategoryDetails(JsonMap jsonMap) {
    final CategoryDetailsDto1 dto = CategoryDetailsDto1Mapper.fromMap(jsonMap);
    return const CategoryDetailsDtoMapper()
        .convert<CategoryDetailsDto1, CategoryDetails>(dto);
  }

  /// Replaces `Infinity` and `-Infinity` with string values before JSON decoding.
  static String _preprocessJson(String json) {
    return json
        .replaceAll('Infinity', '"Infinity"')
        .replaceAll('-Infinity', '"-Infinity"');
  }
}
