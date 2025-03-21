import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

class IntegrationTester {
  IntegrationTester(this.tester);

  final WidgetTester tester;

  Finder _buildFinder({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
    int? at,
  }) {
    if (finder == null) {
      if (key != null) {
        finder = find.byKey(key, skipOffstage: false);
      } else if (stringKey != null) {
        finder = find.byKey(Key(stringKey), skipOffstage: false);
      } else if (icon != null) {
        finder = find.byIcon(icon);
      }
    }
    assert(finder != null, 'Finder, key, stringKey or icon must be provided.');
    if (at != null) {
      return finder!.at(at);
    }
    return finder!;
  }

  /// Repeatedly drags a [view] until the widget is visible.
  Future<void> dragUntilVisible({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
    int? at,
    required Finder view,
    required Offset moveStep,
    int maxIteration = 50,
  }) async {
    final Finder widget = _buildFinder(
      finder: finder,
      key: key,
      stringKey: stringKey,
      icon: icon,
      at: at,
    );
    await tester.dragUntilVisible(
      widget,
      view,
      moveStep,
      maxIteration: maxIteration,
    );
    await tester.pumpAndSettle();
  }

  /// Repeatedly scrolls a [scrollable] until the widget is visible.
  /// It's often easier to use [dragUntilVisible] instead.
  Future<void> scrollUntilVisible({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
    int? at,
    required double delta,
    Finder? scrollable,
    int maxScrolls = 50,
  }) async {
    final Finder widget = _buildFinder(
      finder: finder,
      key: key,
      stringKey: stringKey,
      icon: icon,
      at: at,
    );
    await tester.scrollUntilVisible(
      widget,
      delta,
      scrollable: scrollable,
      maxScrolls: maxScrolls,
    );
    await tester.pumpAndSettle();
  }

  /// Tap the widget found by the [finder], a [key], or a [stringKey].
  Future<void> tap({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
    int? at,
  }) async {
    final Finder tappable = _buildFinder(
      finder: finder,
      key: key,
      stringKey: stringKey,
      icon: icon,
      at: at,
    );

    await tester.ensureVisible(tappable);
    await tester.pumpAndSettle();
    await tester.tap(tappable);
    await tester.pumpAndSettle();
  }

  Future<void> pumpUntilNotFound({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
    int? at,
    Duration timeout = const Duration(seconds: 10),
  }) async {
    final Finder widget = _buildFinder(
      finder: finder,
      key: key,
      stringKey: stringKey,
      icon: icon,
      at: at,
    );
    for (int i = 0; i < 10; i++) {
      final bool found = tester.any(widget);
      if (!found) {
        return;
      }
      await tester.pump(timeout ~/ 10);
    }

    // Failed to remove the widget. The [expect] will throw an error.
    expect(widget, findsNothing);
  }

  /// Returns true if one widget is found.
  bool findsOneWidget({
    Finder? finder,
    Key? key,
    String? stringKey,
    IconData? icon,
  }) {
    final Finder widgets = _buildFinder(
      finder: finder,
      key: key,
      stringKey: stringKey,
      icon: icon,
    );
    return tester.widgetList(widgets).length == 1;
  }
}
