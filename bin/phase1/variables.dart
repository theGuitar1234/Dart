import 'dart:io';

void main() {
  // #radix
  // #variable

  String? name;
  name ??= 'Value was Null';
  print(name);

  int b = 5;
  print(++b);

  int a = 6;
  print(a++);
  print(a);

  Object x = "Thomas";
  String y = x as String;
  print(y is String);

  print(5&3); // AND
  // 5 in binary = 0101
  // 3 in binary = 0011
  // result = 0001 = 1

  print(5 | 3); // OR
  // 0101
  // 0011
  // 0111 = 7

  print(5 ^ 3); // XOR
  // 0101
  // 0011
  // 0110 = 6

  print(~5); // Flips all bits

  print(3 << 1); // Shift Left
  // 3 is 0011
  // shift left by 1 becomes 0110 = 6

  print(8 >> 1); // Shift Right
  // 8 is 1000
  // shift right by 1 becomes 0100 = 4

  print(8 >>> 1); // UnSigned Sift Right

  stdout.writeln("Enter your Maiden Name : ");
  String? maidenName = stdin.readLineSync();
  maidenName != " " ? maidenName : 'Unset';

  print(maidenName);

}