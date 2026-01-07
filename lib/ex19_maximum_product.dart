import 'dart:math';

int adjacentElementsProduct(List<int> array) {
  int maximum = array[0] * array[1];
  for (int i = 0; i < array.length - 1; i++) {
    maximum = max(maximum, array[i] * array[i + 1]);
  }
  return maximum;
}
