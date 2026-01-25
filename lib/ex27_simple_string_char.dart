List<int> solve(String s) => [
      RegExp('[A-Z]').allMatches(s).length,
      RegExp('[a-z]').allMatches(s).length,
      RegExp('[0-9]').allMatches(s).length,
      RegExp('[^a-zA-Z0-9]').allMatches(s).length,
    ];
