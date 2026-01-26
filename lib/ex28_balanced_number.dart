String balancedNum(int numb) {
  final s = numb.toString();
  final len = s.length;

  if (len <= 2) return 'Balanced';

  final mid = len ~/ 2;

  final leftPart = s.substring(0, len.isEven ? mid - 1 : mid);
  final rightPart = s.substring(len.isEven ? mid + 1 : mid + 1);

  final leftSum = leftPart.split('').map(int.parse).fold(0, (a, b) => a + b);
  final rightSum = rightPart.split('').map(int.parse).fold(0, (a, b) => a + b);

  return leftSum == rightSum ? 'Balanced' : 'Not Balanced';
}
