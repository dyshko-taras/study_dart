class SequenceSum {
  static String showSequence(int n) {
    if (n < 0) return '$n<0';
    if (n == 0) return '0=0';
    final List<int> part1 = List.generate(n + 1, (int index) => index);
    final int part2 = part1.reduce((value, element) => value + element);
    return '${part1.join('+')} = $part2';
  }
}
