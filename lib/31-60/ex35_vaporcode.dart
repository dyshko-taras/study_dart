String vaporCode(String s) =>
    s.replaceAll(' ', '').split('').join('  ').toUpperCase();
