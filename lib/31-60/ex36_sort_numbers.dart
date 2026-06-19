List<int> solution(List<int>? nums) {
  nums?.sort();
  return nums ?? [];
}
