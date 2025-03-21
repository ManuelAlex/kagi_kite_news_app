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
    final ApiResponse response = await apiClient.get(
      uri,
    ); // Use injected ApiClient

    if (!response.status.isOk) {
      return Failure<CategoryDetails>(
        ApiException.fromApiResponse(response).toString(),
        erroCode: response.status.httpCode,
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
  /// Encountered this issue on the 21st march
  /// {year: 543 or 547, content: <b><a
  /// href="https://en.wikipedia.org/wiki/Benedict_of_Nursia" data-wiki-id="Q44265"
  /// title="Benedict of Nursia">Benedict of Nursia</a></b> (Italian saint) died., sort_year:
  //  Infinity, type: people},
  static String _preprocessJson(String json) {
    return json
        .replaceAll('Infinity', '"Infinity"')
        .replaceAll('-Infinity', '"-Infinity"');
  }
}
