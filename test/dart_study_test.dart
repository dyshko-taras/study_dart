import 'package:dart_study/31-60/ex39_bowling_pins.dart';
import 'package:test/test.dart';

void main() {
  test('Sample test cases', () {
    expect(bowling_pins([2, 3]), equals('I I I I\n I I I \n       \n   I   '));
    expect(
      bowling_pins([1, 2, 10]),
      equals('I I I  \n I I I \n    I  \n       '),
    );
  });
}
