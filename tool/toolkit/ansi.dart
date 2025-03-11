//  ANSI COLOR CODES
//  https://stackoverflow.com/questions/66911697/decoding-ansi-escape-sequences-in-dart
//  \x1B[33m for yellow color.
//  \x1B[32m for green color.
//  \x1B[31m for red color.
//  \x1B[0m to reset the color back to the default.

String toAnsiYellow(String str) => '\x1B[33m$str\x1B[0m';
String toAnsiGreen(String str) => '\x1B[32m$str\x1B[0m';
String toAnsiRed(String str) => '\x1B[31m$str\x1B[0m';
