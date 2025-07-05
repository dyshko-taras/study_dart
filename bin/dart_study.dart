import 'dart:math';

void main() {}

class Dog {
  String name;
  int age;

  static Dog? _instance;

  Dog._internal(this.name, this.age);

  factory Dog(String name, int age) {
    if (_instance == null) {
      _instance = Dog._internal(name, age);
    }
    return _instance!;
  }
}

class Point {
  final int x;
  final int y;
  final double distanceToOrigin;

  Point(int x, int y)
      : x = x,
        y = y,
        distanceToOrigin = _calculateDistance(x, y) {
    print('Point constructor body executed.');
  }

  static double _calculateDistance(int x, int y) {
    return sqrt(x * x + y * y);
  }
}
