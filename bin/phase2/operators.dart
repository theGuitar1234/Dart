import "dart:io";
import "dart:math";

void main() {
  print(2 + 3);
  print(7 - 2);
  print(4 * 5);
  print(5 / 2);
  print(5 ~/ 2); // Whole division
  print(5 % 2);

  print(1 / 0);
  print(0.0 / 0.0);
  print(1.0 / 0.0);
  print(2^2); // XOR
  print(pow(1, -1)); // 1.0

  int a = 5;
  print(a++); // 5
  print(a); // 6

  int b = 5;
  print(++b); // 6

  int c = 5;
  print(c++); // 5
  print(++c); // 7

  print(2 == 2);
  print(2 != 2);
  print(2 > 2);
  print(2 < 2);
  print(2 >= 2);
  print(2 <= 2);

  var name = 'Ali';
  String name2 = "Thomas";

  print(name2 is String);
  print(name is String);
  print(name is! int);

  Object text = "Hello";
  // String message = text; //Error
  String message = text as String; // as = force cast
  print(message.length);

  Object value = 'Hello';
  if (value is String) {
    print(value.length);
  }
}