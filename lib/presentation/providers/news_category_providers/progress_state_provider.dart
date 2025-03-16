import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'progress_state_provider.g.dart';

@riverpod
class ProgressState extends _$ProgressState {
  Timer? _timer;

  @override
  double build() => 0.0;

  void start() {
    state = 0.0;
    _timer?.cancel();

    const int totalDuration = 1800;
    const int interval = 60;

    int elapsed = 0;
    _timer = Timer.periodic(const Duration(milliseconds: interval), (timer) {
      elapsed += interval;
      state = (elapsed / totalDuration).clamp(0.0, 1.0);

      if (elapsed >= totalDuration) {
        complete();
      }
    });
  }

  void complete() {
    _timer?.cancel();
    state = 1.0;
  }
}
