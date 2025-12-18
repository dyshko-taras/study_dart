//#7 ETL
class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    final Map<String, int> result = <String, int>{};

    int points = 0;

    for (final String key in legacy.keys) {
      points = int.parse(key);
      for (final String value in legacy[key]!) {
        result.addAll(<String, int>{value.toLowerCase(): points});
      }
    }

    return result;
  }
}
