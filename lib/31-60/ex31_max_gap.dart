import 'dart:developer' as dev;
import 'dart:math';

int maxGap(List<int> nums) {
  nums.sort();
  int maxGap = nums[1] - nums[0];
  for (int i = 2; i < nums.length; i++) {
    maxGap = max(maxGap, nums[i] - nums[i - 1]);
  }
  return maxGap;
}
