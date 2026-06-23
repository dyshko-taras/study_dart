import 'package:dart_study/31-60/ex38_function_addition.dart';
import 'package:test/test.dart';

void main() {
  group('Fixed tests', () {
    test('Test add(1)(3)', () {
      expect(
        add(1),
        isA<int Function(int)>(),
        reason: 'add(x) should return a function',
      );
      expect(add(1)(3), equals(4));
    });
    test('Test add(0)(-15)', () {
      expect(
        add(0),
        isA<int Function(int)>(),
        reason: 'add(x) should return a function',
      );
      expect(add(0)(-15), equals(-15));
    });
    final addThree = add(3);
    test('Test add(3)(5)', () {
      expect(
        add(5),
        isA<int Function(int)>(),
        reason: 'add(x) should return a function',
      );
      expect(addThree(5), equals(8));
    });
    test('Test add(3)(5) again - make sure your add(3) is pure!', () {
      expect(
        add(5),
        isA<int Function(int)>(),
        reason: 'add(x) should return a function',
      );
      expect(addThree(5), equals(8));
    });
  });
}
