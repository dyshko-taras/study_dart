import 'dart:developer' as dev;

String bowling_pins(List<int> pins) {
  final List<String> rows = [];
  for (var row = 4; row >= 1; row--) {
    final int startPin = ((row - 1) * row / 2).toInt();
    final String sideSpaces = ' ' * (4 - row);
    final line = List.generate(row, (int index) => pins.contains(index + startPin + 1) ? ' ' : 'I').join(' ');
    rows.add('$sideSpaces$line$sideSpaces');
  }
  dev.log(rows.join('\n'));
  return rows.join('\n');
}
