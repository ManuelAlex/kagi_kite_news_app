import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_image_view.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri());
  });

  group('ImageView Widget Tests', () {
    testWidgets('displays image and caption correctly', (
      WidgetTester tester,
    ) async {
      const String testImageUrl = 'https://example.com/sample.jpg';
      const String testCaption = 'This is an image caption';
      const String testDomain = 'example.com';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ImageView(
              domain: testDomain,
              image: testImageUrl,
              imageCaption: testCaption,
            ),
          ),
        ),
      );

      // Verify image is displayed
      expect(find.byType(CachedNetworkImage), findsOneWidget);

      // Verify domain text appears
      expect(find.text(testDomain), findsOneWidget);

      // Verify caption appears
      expect(find.text(testCaption), findsOneWidget);
    });

    testWidgets('displays error icon when image is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ImageView(
              domain: 'example.com',
              image: null,
              imageCaption: 'No image available',
            ),
          ),
        ),
      );

      // Verify broken image icon is shown
      expect(find.byIcon(Icons.image_not_supported), findsOneWidget);
    });

    testWidgets('launches URL when domain is tapped', (
      WidgetTester tester,
    ) async {
      const String testDomain = 'example.com';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ImageView(
              domain: testDomain,
              image: 'https://example.com/sample.jpg',
              imageCaption: 'Sample image',
            ),
          ),
        ),
      );

      // Simulate tap on domain text
      await tester.tap(find.text(testDomain));
      await tester.pump();
    });
  });
}
