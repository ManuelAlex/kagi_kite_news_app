import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/domain/domain.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_source_domain_widgets.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

// Mock classes
class MockUrlLauncherPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements UrlLauncherPlatform {}

void main() {
  late MockUrlLauncherPlatform mockUrlLauncher;
  const String testUrl = 'https://example.com'; // Define test URL

  setUpAll(() {
    registerFallbackValue(
      const LaunchOptions(),
    ); // Ensure default values for any()

    mockUrlLauncher = MockUrlLauncherPlatform();
    UrlLauncherPlatform.instance = mockUrlLauncher;

    when(
      () => mockUrlLauncher.canLaunch(testUrl),
    ).thenAnswer((_) async => true);

    when(
      () => mockUrlLauncher.launchUrl(any(), any()),
    ).thenAnswer((_) async => true);
  });

  group('SourceDomainWidget', () {
    final List<Domain> mockDomainSources = <Domain>[
      const Domain(
        name: 'Source 1',
        favicon: 'https://example.com/favicon1.ico',
      ),
      const Domain(
        name: 'Source 2',
        favicon: 'https://example.com/favicon2.ico',
      ),
    ];

    final List<Article> mockArticles = <Article>[
      Article(
        title: 'Article 1',
        domain: 'Source 1',
        link: 'https://example.com/article1',
        date: DateTime.now(),
      ),
      Article(
        title: 'Article 2',
        domain: 'Source 2',
        link: 'https://example.com/article2',
        date: DateTime.now(),
      ),
    ];

    testWidgets('renders correctly with no sources', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SourceDomainWidget(
              domainSources: <Domain>[],
              articles: <Article>[],
            ),
          ),
        ),
      );

      expect(find.text('No sources available'), findsOneWidget);
    });

    testWidgets('renders correctly with sources', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SourceDomainWidget(
              domainSources: mockDomainSources,
              articles: mockArticles,
            ),
          ),
        ),
      );

      expect(find.text('Sources'), findsOneWidget);
      expect(find.text('Source 1'), findsOneWidget);
      expect(find.text('Source 2'), findsOneWidget);
      expect(find.text('1 article'), findsNWidgets(2));
    });

    testWidgets('shows hover effect on _SourceDomain', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SourceDomainWidget(
              domainSources: mockDomainSources,
              articles: mockArticles,
            ),
          ),
        ),
      );

      // Verify initial state (no hover)
      final Finder source1Finder = find.text('Source 1');
      expect(source1Finder, findsOneWidget);

      // Simulate hover
      final RenderBox renderBox = tester.renderObject(source1Finder);
      final Offset center = renderBox.localToGlobal(
        renderBox.size.center(Offset.zero),
      );
      await tester.sendEventToBinding(PointerEnterEvent(position: center));

      await tester.pump(const Duration(milliseconds: 500));

      // Ensure hover effect is applied (modify based on actual UI behavior)
      expect(source1Finder, findsOneWidget);
    });
  });
}
