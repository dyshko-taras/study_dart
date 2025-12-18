// See https://pub.dartlang.org/packages/test
import 'package:dart_study/ex11_remove_first_and_last_char.dart';
import 'package:test/test.dart';

void main() {
  group('Fixed tests', () {
    test("'' => Null", () {
      expect(array(''), equals(Null));
    });
    test("'1' => Null", () {
      expect(array('1'), equals(Null));
    });
    test("'1, 3' => Null", () {
      expect(array('1, 3'), equals(Null));
    });
    test("'1,2,3' => '2'", () {
      expect(array('1,2,3'), equals('2'));
    });
    test("'1,2,3,4' => '2 3'", () {
      expect(array('1,2,3,4'), equals('2 3'));
    });
  });
}
