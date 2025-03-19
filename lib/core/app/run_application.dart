import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_initializer.dart';

Future<void> runApplication(
  AppInitializer appInitializer,
  Widget application,
) async {
  // Initialize the application.
  await appInitializer.initialize();

  // Create provider scope that wraps the application.
  //
  // For widgets to be able to read providers, we need to wrap the entire
  // application in a [ProviderScope] widget. This is where the state of our
  // providers will be stored.
  final Widget providerScopeWidget = UncontrolledProviderScope(
    container: appInitializer.providerContainer,
    child: application,
  );

  // Run the application.
  runApp(providerScopeWidget);
}
