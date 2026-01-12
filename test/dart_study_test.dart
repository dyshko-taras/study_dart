import 'package:dart_study/ex24_rock_pager_scissors.dart';
import 'package:test/test.dart';

void main() {
  void doTest(String pl1, String pl2, String expected) {
    test('$pl1 vs $pl2', () => expect(rpsls(pl1, pl2), equals(expected)));
  }

  group('Player 1 wins', () {
    doTest('rock', 'lizard', 'Player 1 Won!');
    doTest('scissors', 'lizard', 'Player 1 Won!');
    doTest('spock', 'rock', 'Player 1 Won!');
  });

  group('Player 2 wins', () {
    doTest('lizard', 'scissors', 'Player 2 Won!');
    doTest('scissors', 'spock', 'Player 2 Won!');
    doTest('rock', 'spock', 'Player 2 Won!');
  });

  group('Draw!', () {
    doTest('lizard', 'lizard', 'Draw!');
    doTest('spock', 'spock', 'Draw!');
    doTest('rock', 'rock', 'Draw!');
  });
}
