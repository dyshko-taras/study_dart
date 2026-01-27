import 'dart:math';

int solve(String s) {
  // your code here
  int longestChain = 0;
  int temp = 0;
  final array = s.split('');
  for (int i = 0; i < s.length; i++) {
    if ('aeiou'.contains(array[i])) {
      temp++;
      longestChain = max(longestChain, temp);
    } else {
      temp = 0;
    }
  }
  return longestChain;
}
