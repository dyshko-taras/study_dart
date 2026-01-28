List<int> incrementer(List<int> nums) =>
    nums.asMap().entries.map((e) => (e.value + e.key + 1) % 10).toList();
