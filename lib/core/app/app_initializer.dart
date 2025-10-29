import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/providers/app_hive.dart';
import '../../presentation/providers/hive_provider.dart';

class AppInitializer {
  AppInitializer({List<Override> overrides = const <Override>[]})
    : _overrides = overrides;

  /// A container for all providers.
  late final ProviderContainer providerContainer = ProviderContainer(
    overrides: _overrides,
  );

  final List<Override> _overrides;

  /// Initializes Hive and the provider container.
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Wait for hive to be initialized;
    appHive = await providerContainer.read(hiveInterfaceProvider.future);
  }
}
