int sumTwoSmallestNumbers(List<int> nums) {
  final list = nums.where((x) => x > 0).toList();
  list.sort();
  return list[0] + list[1];
}
