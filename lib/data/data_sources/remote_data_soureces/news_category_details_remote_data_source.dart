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

class NewsCategoryDetailsRemoteDataSource extends ApiClient {
  NewsCategoryDetailsRemoteDataSource();

  Future<Result<CategoryDetails>> getCategoryDetailsByFileName(
    String fileName,
  ) async {
    final Uri uri = Uri.parse('$baseUrl/$fileName');
    final ApiResponse response = await get(uri);

    if (!response.status.isOk) {
      return Failure<CategoryDetails>(
        ApiException.fromApiResponse(response).toString(),
        erroCode: response.status.httpCode,
      );
    }

    final JsonMap jsonMap = jsonDecode(response.asDataString);

    if (jsonMap.isEmpty) {
      return const Failure<CategoryDetails>('Category details not found.');
    }

    // Run parsing in an isolate to avoid blocking the UI
    final CategoryDetails categoryDetails = await compute(
      _parseCategoryDetails,
      jsonMap,
    );

    return Success<CategoryDetails>(categoryDetails);
  }

  /// Parses category details using compute() to offload heavy JSON processing to a separate isolate.
  static CategoryDetails _parseCategoryDetails(JsonMap jsonMap) {
    final CategoryDetailsDto1 dto = CategoryDetailsDto1Mapper.fromMap(jsonMap);
    return const CategoryDetailsDtoMapper()
        .convert<CategoryDetailsDto1, CategoryDetails>(dto);
  }
}
