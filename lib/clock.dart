import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockNotifier extends StateNotifier<DateTime> {
  ClockNotifier() : super(DateTime.now()) {
    _timer = Timer.periodic(
      const Duration(milliseconds: 50),
      (_) => state = DateTime.now(),
    );
  }
  late final Timer _timer;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
