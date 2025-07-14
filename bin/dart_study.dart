import 'dart:developer' show log;

import 'package:dart_study/exercism_exercises.dart';

void main() {
  final scores =
      HighScores(<int>[10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]);
  log('\n');
  log(scores.personalTopThree().toString());
}
