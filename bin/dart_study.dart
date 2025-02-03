import 'dart:convert';

void main() {
  String text = 'Testing,1 2 3, testing.';
  String text2 = text.replaceAll(RegExp(r'[ .,]'), '');
  print(text2);
  AsciiCodec asciiCodec = AsciiCodec();
  List<int> resultCode = AsciiCodec()
      .encode(text.toLowerCase().split(RegExp(r'[ ,.]')).join(''))
      .map((number) {
    if (number >= 97 && number <= 122) {
      return 122 - number + 97;
    } else {
      return number;
    }
  }).toList();
  // return asciiCodec.decode(resultCode);
  print(RegExp(r'.{1,5}')
      .allMatches(asciiCodec.decode(resultCode))
      .map((match) => match.group(0))
      .toList()
      .join(' '));
}
