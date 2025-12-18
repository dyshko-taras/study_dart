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
