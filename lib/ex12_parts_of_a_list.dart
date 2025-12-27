import 'dart:developer' as dev;

//#12 Parts of a list
List<List<String>> partlist(List<String> arr) {
  final List<List<String>> result = [];
  for (int i = 1; i < arr.length; i++) {
    result.add([
      arr.sublist(0, i).join(' '),
      arr.sublist(i, arr.length).join(' '),
    ]);
  }
  dev.log(result.toString());
  return result;
}
