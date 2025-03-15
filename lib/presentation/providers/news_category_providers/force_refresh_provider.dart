import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'force_refresh_provider.g.dart';

@riverpod
class ForceRefresh extends _$ForceRefresh {
  @override
  bool build() => false;

  void triggerRefresh() {
    state = true;
  }

  void reset() {
    state = false;
  }
}
