String rpsls(String pl1, String pl2) {
  if (pl1 == pl2) return 'Draw!';
  final Map<String, int> elements = {
    'scissors': 0,
    'paper': 1,
    'rock': 2,
    'lizard': 3,
    'spock': 4,
  };
  if (elements[pl2] == ((elements[pl1]! + 1) % 5) ||
      elements[pl2] == ((elements[pl1]! + 3) % 5))
    return 'Player 1 Won!';
  else
    return 'Player 2 Won!';
}
