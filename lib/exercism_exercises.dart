// ignore_for_file: public_member_api_docs, sort_constructors_first
//#1 Hello World
import 'dart:convert';
import 'dart:developer' show log;
import 'dart:math' show min;

class HelloWorld {
  String hello() => 'Hello, World!';
}

//#2 Two Fer
String twoFer([String name = 'you']) => 'One for $name, one for me.';

//#3 Leap
class Leap {
  bool leapYear(int year) =>
      (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

//#4 Scrabble Score
int score(String word) {
  int score = 0;
  for (final String letter in word.toLowerCase().split('')) {
    switch (letter) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
      case 'l':
      case 'n':
      case 'r':
      case 's':
      case 't':
        score += 1;
        break;
      case 'd':
      case 'g':
        score += 2;
        break;
      case 'b':
      case 'c':
      case 'm':
      case 'p':
        score += 3;
        break;
      case 'f':
      case 'h':
      case 'v':
      case 'w':
      case 'y':
        score += 4;
        break;
      case 'k':
        score += 5;
        break;
      case 'j':
      case 'x':
        score += 8;
        break;
      case 'q':
      case 'z':
        score += 10;
        break;
    }
  }
  return score;
}

//#5 Atbash Cipher
class AtbashCipher {
  String encode(String text) {
    const AsciiCodec asciiCodec = AsciiCodec();
    final List<int> resultCode = const AsciiCodec()
        .encode(text.toLowerCase().replaceAll(RegExp('[ .,]'), ''))
        .map((int number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return RegExp('.{1,5}')
        .allMatches(asciiCodec.decode(resultCode))
        .map((RegExpMatch match) => match.group(0))
        .toList()
        .join(' ');
  }

  String decode(String text) {
    const AsciiCodec asciiCodec = AsciiCodec();
    final List<int> resultCode =
        const AsciiCodec().encode(text.replaceAll(' ', '')).map((int number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return asciiCodec.decode(resultCode);
  }
}

//#6 Eliud's Eggs
class EggCounter {
  int count(int number) => number.toRadixString(2).replaceAll('0', '').length;
}

//#7 ETL
class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    final Map<String, int> result = <String, int>{};

    int points = 0;

    for (final String key in legacy.keys) {
      points = int.parse(key);
      for (final String value in legacy[key]!) {
        result.addAll(<String, int>{value.toLowerCase(): points});
      }
    }

    return result;
  }
}

//#8 Armstrong Numbers
class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final List<String> digits = number.split('');
    final int length = digits.length;
    BigInt sum = BigInt.zero;

    for (final String d in digits) {
      final BigInt value = BigInt.from(int.parse(d));
      sum += value.pow(length);
    }

    return sum.toString() == number;
  }
}

//#9 Binary
class GameOfLife {
  GameOfLife(this.input);

  final List<List<int>> input;
  final List<List<int>> output = <List<int>>[];

  static const int dead = 0;
  static const int alive = 1;

  void tick() {
    for (int i = 0; i < input.length; i++) {
      final List<int> row = <int>[];
      for (int j = 0; j < input[i].length; j++) {
        final int neighbors = _sumOfNeighbors(input, i, j);
        if (input[i][j] == alive && neighbors < 2) {
          row.add(dead);
        } else if (input[i][j] == alive && neighbors > 3) {
          row.add(dead);
        } else if (input[i][j] == dead && neighbors == 3) {
          row.add(alive);
        } else {
          row.add(input[i][j]);
        }
      }
      output.add(row);
    }
  }

  List<List<int>> matrix() => output;

  int _sumOfNeighbors(List<List<int>> matrix, int row, int col) {
    int sum = 0;
    final int numRows = matrix.length;
    final int numCols = matrix[0].length;

    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        if (i == 0 && j == 0) {
          continue;
        }

        final int newRow = row + i;
        final int newCol = col + j;

        if (newRow >= 0 &&
            newRow < numRows &&
            newCol >= 0 &&
            newCol < numCols) {
          sum += matrix[newRow][newCol];
        }
      }
    }

    return sum;
  }
}

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
