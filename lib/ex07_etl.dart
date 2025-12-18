//#6 Eliud's Eggs
class EggCounter {
  int count(int number) => number.toRadixString(2).replaceAll('0', '').length;
}
