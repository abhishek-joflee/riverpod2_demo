import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'clock.dart';

final timeFormatterProvider = Provider<DateFormat>((ref) {
  return DateFormat("y-MM-dd \nhh:mm:ss a");
});

final clockProvider = StateNotifierProvider<ClockNotifier, DateTime>((ref) {
  return ClockNotifier();
});
