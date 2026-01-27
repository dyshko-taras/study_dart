int solve(String s) {
  int result = 0;
  for (int i = 0; i < s.length ~/ 2 + 1; i++) {
    if (s.endsWith(s.substring(0, i))) {
      result = i;
    }
  }
  return result;
}
