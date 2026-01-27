import 'dart:math';

//#10 High Scores
class HighScores {
  HighScores(this.scores);

  final List<int> scores;
  List<int> scores2 = [];

  int latest() => scores.last;

  int personalBest() {
    scores2 = List.from(scores);
    scores2.sort();
    return scores2.last;
  }

  List<int> personalTopThree() {
    scores2 = List.from(scores);
    scores2.sort((a, b) => b.compareTo(a));
    return scores2.sublist(0, min(3, scores2.length));
  }
}
