String capitalize(String s, List<int> ind) {
  for (final i in ind) {
    if (i >= 0 && i < s.length) {
      s = s.replaceRange(i, i + 1, s.substring(i, i + 1).toUpperCase());
    }
  }
  return s;
}
