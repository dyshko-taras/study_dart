//# Remove First and Last Character Part Two

dynamic array(String parameter) {
  if (parameter.isEmpty) {
    return Null;
  }
  final listOfChar = parameter.split(',');
  if (listOfChar.length <= 2) {
    return Null;
  }
  return listOfChar.sublist(1, listOfChar.length - 1).join(' ');
}
