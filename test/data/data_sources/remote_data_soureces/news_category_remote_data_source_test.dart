import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/core.dart';
import 'package:kagi_kite_news_app/data/data.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/_base_url.dart';
import 'package:kagi_kite_news_app/data/data_sources/remote_data_soureces/news_category_remote_data_source.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  late NewsCategoryRemoteDataSource dataSource;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    dataSource = NewsCategoryRemoteDataSource(mockApiClient);

    registerFallbackValue(Uri());
  });

  group('fetchNewsCategories', () {
    final Uri uri = Uri.parse('$baseUrl/kite.json');

    final JsonMap jsonMap = <String, Object?>{
      'timestamp': 1742389364,
      'categories': [
        {'name': 'World', 'file': 'world.json'},
        {'name': 'USA', 'file': 'usa.json'},
      ],
    };

    test(
      'should return Success<NewsCategories> when API call is successful',
      () async {
        // Arrange
        final String jsonString = jsonEncode(jsonMap);
        final Uint8List jsonData = Uint8List.fromList(utf8.encode(jsonString));

        final ApiResponse response = ApiResponse(
          data: jsonData,
          status: ApiStatus.ok,
        );

        final NewsCategoriesDto1 dto = NewsCategoriesDto1Mapper.fromMap(
          jsonMap,
        );
        final NewsCategories expectedNewsCategories =
            const NewsCategoriesDtoMapper()
                .convert<NewsCategoriesDto1, NewsCategories>(dto);

        when(() => mockApiClient.get(any())).thenAnswer((_) async => response);

        // Act
        final Result<NewsCategories> result =
            await dataSource.fetchNewsCategories();

        // Assert
        expect(result, isA<Success<NewsCategories>>());
        expect(
          (result as Success<NewsCategories>).data,
          expectedNewsCategories,
        );
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );

    test(
      'should return Failure<NewsCategories> when API response is an error',
      () async {
        // Arrange
        final ApiResponse response = ApiResponse(
          data: Uint8List.fromList(utf8.encode('{"error": "Not Found"}')),
          status: ApiStatus.notFound,
        );

        when(() => mockApiClient.get(any())).thenAnswer((_) async => response);

        // Act
        final Result<NewsCategories> result =
            await dataSource.fetchNewsCategories();

        // Assert
        expect(result, isA<Failure<NewsCategories>>());
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );

    test(
      'should return Failure<NewsCategories> on unexpected exception',
      () async {
        // Arrange
        when(
          () => mockApiClient.get(any()),
        ).thenThrow(Exception('Unexpected error'));

        // Act
        final Result<NewsCategories> result =
            await dataSource.fetchNewsCategories();

        // Assert
        expect(result, isA<Failure<NewsCategories>>());
        expect(
          (result as Failure<NewsCategories>).message,
          contains('Unexpected error'),
        );
        verify(() => mockApiClient.get(uri)).called(1);
      },
    );
  });
}
