import 'dart:convert';

//#5 Atbash Cipher
class AtbashCipher {
  String encode(String text) {
    const AsciiCodec asciiCodec = AsciiCodec();
    final List<int> resultCode = const AsciiCodec()
        .encode(text.toLowerCase().replaceAll(RegExp('[ .,]'), ''))
        .map((int number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return RegExp('.{1,5}')
        .allMatches(asciiCodec.decode(resultCode))
        .map((RegExpMatch match) => match.group(0))
        .toList()
        .join(' ');
  }

  String decode(String text) {
    const AsciiCodec asciiCodec = AsciiCodec();
    final List<int> resultCode =
        const AsciiCodec().encode(text.replaceAll(' ', '')).map((int number) {
      if (number >= 97 && number <= 122) {
        return 122 - number + 97;
      } else {
        return number;
      }
    }).toList();
    return asciiCodec.decode(resultCode);
  }
}
