import 'package:dart_study/ex13_the_office_2.dart';
import 'package:test/test.dart';

void main() {
  group('Basic tests', () {
    void doTest(Map<String, String> staff, String expected) {
      test(
        'Testing for $staff',
        () => expect(boredom(Map.unmodifiable(staff)), equals(expected)),
      );
    }

    doTest(
      {
        'tim': 'change',
        'jim': 'accounts',
        'randy': 'canteen',
        'sandy': 'change',
        'andy': 'change',
        'katie': 'IS',
        'laura': 'change',
        'saajid': 'IS',
        'alex': 'trading',
        'john': 'accounts',
        'mr': 'finance',
      },
      'kill me now',
    );

    doTest(
      {
        'tim': 'IS',
        'jim': 'finance',
        'randy': 'pissing about',
        'sandy': 'cleaning',
        'andy': 'cleaning',
        'katie': 'cleaning',
        'laura': 'pissing about',
        'saajid': 'regulation',
        'alex': 'regulation',
        'john': 'accounts',
        'mr': 'canteen',
      },
      'i can handle this',
    );

    doTest(
      {
        'tim': 'accounts',
        'jim': 'accounts',
        'randy': 'pissing about',
        'sandy': 'finance',
        'andy': 'change',
        'katie': 'IS',
        'laura': 'IS',
        'saajid': 'canteen',
        'alex': 'pissing about',
        'john': 'retail',
        'mr': 'pissing about',
      },
      'party time!!',
    );
  });
}
