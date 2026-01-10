import 'package:dart_study/ex22_sum_two_lowest_int.dart';
import 'package:test/test.dart';

void main() {
  group('Fixed tests', () {
    test('[10, 343445353, 3453445, 3453545353453] --> 3453455', () {
      expect(
        sumTwoSmallestNumbers([10, 343445353, 3453445, 3453545353453]),
        equals(3453455),
      );
    });
    test('[5, 8, 12, 18, 22] --> 13', () {
      expect(sumTwoSmallestNumbers([5, 8, 12, 18, 22]), equals(13));
    });
    test('[7, 15, 12, 18, 22] --> 19', () {
      expect(sumTwoSmallestNumbers([7, 15, 12, 18, 22]), equals(19));
    });
    test('[25, 42, 12, 18, 22] --> 30', () {
      expect(sumTwoSmallestNumbers([25, 42, 12, 18, 22]), equals(30));
    });
    test('[1, 8, 12, 18, 5] --> 6', () {
      expect(sumTwoSmallestNumbers([1, 8, 12, 18, 5]), equals(6));
    });
    test('[13, 12, 5, 61, 22] --> 17', () {
      expect(sumTwoSmallestNumbers([13, 12, 5, 61, 22]), equals(17));
    });
  });
}
