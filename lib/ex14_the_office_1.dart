String outed(Map<String, int> meet, String boss) {
  int total = 0;
  meet.forEach((key, value) {
    total += key == boss ? value * 2 : value;
  });
  final double average = total / meet.length;
  return average <= 5 ? 'Get Out Now!' : 'Nice Work Champ!';
}
