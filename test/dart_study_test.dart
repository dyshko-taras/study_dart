import 'package:dart_study/exercism_exercises.dart';
import 'package:test/test.dart';

void main() {
  group('HighScores: high scores tests - ', highScoresTests);
  group('HighScores: Top 3 scores - ', top3Scores);
}

void highScoresTests() {
  test('List of scores', () {
    final scores = HighScores(<int>[30, 50, 20, 70]);
    expect(scores.scores, equals(<int>[30, 50, 20, 70]));
  });
  test('Latest score', () {
    final scores = HighScores(<int>[100, 0, 90, 30]);
    expect(scores.latest(), equals(30));
  });
  test('Personal best', () {
    final scores = HighScores(<int>[40, 100, 70]);
    expect(scores.personalBest(), equals(100));
  });
}

void top3Scores() {
  test('Personal top three from a list of scores', () {
    final scores =
        HighScores(<int>[10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]);
    expect(scores.personalTopThree(), equals(<int>[100, 90, 70]));
  });
  test('Personal top highest to lowest', () {
    final scores = HighScores(<int>[20, 10, 30]);
    expect(scores.personalTopThree(), equals(<int>[30, 20, 10]));
  });
  test('Personal top when there is a tie', () {
    final scores = HighScores(<int>[40, 20, 40, 30]);
    expect(scores.personalTopThree(), equals(<int>[40, 40, 30]));
  });
  test('Personal top when there are less than 3', () {
    final scores = HighScores(<int>[30, 70]);
    expect(scores.personalTopThree(), equals(<int>[70, 30]));
  });
  test('Personal top when there is only one', () {
    final scores = HighScores(<int>[40]);
    expect(scores.personalTopThree(), equals(<int>[40]));
  });
  test('Latest score after personal top scores', () {
    final scores = HighScores(<int>[70, 50, 20, 30]);
    scores.personalTopThree();
    expect(scores.latest(), equals(30));
  });
  test('Scores after personal top scores', () {
    final scores = HighScores(<int>[30, 50, 20, 70]);
    scores.personalTopThree();
    expect(scores.scores, equals(<int>[30, 50, 20, 70]));
  });
  test('Latest score after personal best', () {
    final scores = HighScores(<int>[20, 70, 15, 25, 30]);
    scores.personalBest();
    expect(scores.latest(), equals(30));
  });
  test('Scores after personal best', () {
    final scores = HighScores(<int>[20, 70, 15, 25, 30]);
    scores.personalBest();
    expect(scores.scores, equals(<int>[20, 70, 15, 25, 30]));
  });
}

