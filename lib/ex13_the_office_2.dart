//#13 The Office 2
String boredom(Map<String, String> staff) {
  final Map<String, int> boredomScore = {
    'accounts': 1,
    'finance': 2,
    'canteen': 10,
    'regulation': 3,
    'trading': 6,
    'change': 6,
    'IS': 8,
    'retail': 5,
    'cleaning': 4,
    'pissing about': 25,
  };
  int result = 0;

  for (final String department in staff.values) {
    result += boredomScore[department] ?? 0;
  }

  return switch (result) {
    <= 80 => 'kill me now',
    < 100 => 'i can handle this',
    _ => 'party time!!',
  };
}
