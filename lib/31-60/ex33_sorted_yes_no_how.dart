String isSortedAndHow(List<int> arr) {
  final List<int> ascendingArr = arr.toList();
  ascendingArr.sort();
  final List<int> descendingArr = ascendingArr.reversed.toList();
  if (listEquals(arr, ascendingArr)) {
    return 'yes, ascending';
  } else if (listEquals(arr, descendingArr)) {
    return 'yes, descending';
  } else {
    return 'no';
  }
}

bool listEquals(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
