import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/network/api/api_client.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient();
}
