String printerError(String s) =>
    '${RegExp('[^a-m]').allMatches(s).length}/${s.length}';
