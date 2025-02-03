//#1 Hello World
import 'dart:convert';

class HelloWorld {
  String hello() => 'Hello, World!';
}

//#2
String twoFer([String name = 'you']) => 'One for $name, one for me.';

//#3
class Leap {
  bool leapYear(int year) =>
      (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

//#4
int score(String word) {
  var score = 0;
  for (String letter in word.toLowerCase().split('')) {
    switch (letter) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
      case 'l':
      case 'n':
      case 'r':
      case 's':
      case 't':
        score += 1;
        break;
      case 'd':
      case 'g':
        score += 2;
        break;
      case 'b':
      case 'c':
      case 'm':
      case 'p':
        score += 3;
        break;
      case 'f':
      case 'h':
      case 'v':
      case 'w':
      case 'y':
        score += 4;
        break;
      case 'k':
        score += 5;
        break;
      case 'j':
      case 'x':
        score += 8;
        break;
      case 'q':
      case 'z':
        score += 10;
        break;
    }
  }
  return score;
}

//#5
class AtbashCipher {
  String encode(String text) {
    AsciiCodec asciiCodec = AsciiCodec();
    List<int> resultCode = AsciiCodec()
        .encode(text.toLowerCase().replaceAll(RegExp(r'[ .,]'), ''))
        .map((number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return RegExp(r'.{1,5}')
        .allMatches(asciiCodec.decode(resultCode))
        .map((match) => match.group(0))
        .toList()
        .join(' ');
  }

  String decode(String text) {
    AsciiCodec asciiCodec = AsciiCodec();
    List<int> resultCode =
        AsciiCodec().encode(text.replaceAll(' ', '')).map((number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return asciiCodec.decode(resultCode);
  }
}
