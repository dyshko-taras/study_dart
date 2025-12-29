import 'package:dart_study/ex14_the_office_1.dart';
import 'package:test/test.dart';

void main() {
  void doTest(Map<String, int> meet, String boss, String expected) {
    test('Test', () {
      expect(
        outed(Map.unmodifiable(meet), boss),
        equals(expected),
        reason: 'meet = $meet\nboss = $boss',
      );
    });
  }

  group('Example tests', () {
    doTest(
      {
        'tim': 0,
        'jim': 2,
        'randy': 0,
        'sandy': 7,
        'andy': 0,
        'katie': 5,
        'laura': 1,
        'saajid': 2,
        'alex': 3,
        'john': 2,
        'mr': 0,
      },
      'laura',
      'Get Out Now!',
    );
    doTest(
      {
        'tim': 1,
        'jim': 3,
        'randy': 9,
        'sandy': 6,
        'andy': 7,
        'katie': 6,
        'laura': 9,
        'saajid': 9,
        'alex': 9,
        'john': 9,
        'mr': 8,
      },
      'katie',
      'Nice Work Champ!',
    );
    doTest(
      {
        'tim': 2,
        'jim': 4,
        'randy': 0,
        'sandy': 5,
        'andy': 8,
        'katie': 6,
        'laura': 2,
        'saajid': 2,
        'alex': 3,
        'john': 2,
        'mr': 8,
      },
      'john',
      'Get Out Now!',
    );
  });
}
