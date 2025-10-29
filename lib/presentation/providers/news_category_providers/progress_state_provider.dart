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

    const int totalDuration = 900;
    const int interval = 30;
    const int totalSteps = totalDuration ~/ interval;

    int elapsedSteps = 0;
    _timer = Timer.periodic(const Duration(milliseconds: interval), (
      Timer timer,
    ) {
      elapsedSteps++;
      state = (elapsedSteps / totalSteps).clamp(0.0, 1.0);

      if (elapsedSteps >= totalSteps) {
        complete();
      }
    });
  }

  void complete() {
    if (state == 1.0) {
      return;
    }

    _timer?.cancel();
    state = 1.0;
  }
}
