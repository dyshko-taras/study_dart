import 'dart:developer' as dev;

String strong(int n) {
  int result = n;
  while (n > 0) {
    result -= _factorial(n % 10);
    n ~/= 10;
  }
  return result == 0 ? 'STRONG!!!!' : 'Not Strong !!';
}

int _factorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  dev.log('factorial $result');
  return result;
}
