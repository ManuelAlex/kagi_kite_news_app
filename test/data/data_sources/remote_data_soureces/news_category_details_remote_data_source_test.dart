import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/_base_url.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/news_category_details_remote_data_source.dart';
import 'package:kagi_kite_news_app/domain/entities/category_details.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late NewsCategoryDetailsRemoteDataSource dataSource;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    dataSource = NewsCategoryDetailsRemoteDataSource(mockApiClient);

    registerFallbackValue(Uri());
  });

  group('getCategoryDetailsByFileName', () {
    const String fileName = 'world_news.json';
    final Uri uri = Uri.parse('$baseUrl/$fileName');

    final JsonMap jsonMap = <String, Object?>{
      'category': 'World',
      'timestamp': 1742216097,
      'read': 739,
      'clusters': [],
    };

    test(
      'should return Success<CategoryDetails> when API call is successful',
      () async {
        // Arrange
        final String jsonString = jsonEncode(jsonMap);
        final Uint8List jsonData = Uint8List.fromList(utf8.encode(jsonString));

        final ApiResponse response = ApiResponse(
          data: jsonData,
          status: ApiStatus.ok,
        );

        final CategoryDetailsDto1 dto = CategoryDetailsDto1Mapper.fromMap(
          jsonMap,
        );
        final CategoryDetails expectedCategoryDetails =
            const CategoryDetailsDtoMapper()
                .convert<CategoryDetailsDto1, CategoryDetails>(dto);

        when(() => mockApiClient.get(any())).thenAnswer((_) async => response);

        // Act
        final Result<CategoryDetails> result = await dataSource
            .getCategoryDetailsByFileName(fileName);

        // Assert
        expect(result, isA<Success<CategoryDetails>>());
        expect(
          (result as Success<CategoryDetails>).data,
          expectedCategoryDetails,
        );
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );
    test(
      'should return Failure<CategoryDetails> when API response is an error',
      () async {
        // Arrange
        final ApiResponse response = ApiResponse(
          data: Uint8List.fromList(utf8.encode('{"error": "Not Found"}')),
          status: ApiStatus.notFound,
        );

        when(() => mockApiClient.get(any())).thenAnswer((_) async => response);

        // Act
        final Result<CategoryDetails> result = await dataSource
            .getCategoryDetailsByFileName(fileName);

        // Assert
        expect(result, isA<Failure<CategoryDetails>>());
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );

    test(
      'should return Failure<CategoryDetails> when API response is empty',
      () async {
        // Arrange
        final Uint8List emptyJsonData = Uint8List.fromList(utf8.encode('{}'));
        final ApiResponse response = ApiResponse(
          data: emptyJsonData,
          status: ApiStatus.ok,
        );

        when(() => mockApiClient.get(any())).thenAnswer((_) async => response);

        // Act
        final Result<CategoryDetails> result = await dataSource
            .getCategoryDetailsByFileName(fileName);

        // Assert
        expect(result, isA<Failure<CategoryDetails>>());
        expect(
          (result as Failure<CategoryDetails>).message,
          'Category details not found.',
        );
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );
  });
}
