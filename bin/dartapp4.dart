import 'dart:io';

void main() {
  stdout.write("Enter Your Name : ");
  String? name = stdin.readLineSync();
  print("Hello $name!");
  stdout.writeln("Enter Your Surname : ");
  String? surname = stdin.readLineSync();
  print("You are from $surname\'s");

  // Expression is something that produces a value
  // Statement is a command that does something

  // Block :
  {
    int x = 5;
    print(x);
  }
  // Out of scope : Console.WriteLine(x);
}