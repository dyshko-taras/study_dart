import 'dart:developer' as dev;

//#16
int nthSmallest(List<int> arr, int pos) {
  arr.sort();
  dev.log('result $pos');
  return arr[pos - 1];
}
