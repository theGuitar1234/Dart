void main() {
  int age = -10;

  // Asagidaki commandla fayli ise salsaq Exception verecek cunki yas menfidir : 
  // dart --enable-asserts run four_question.dart
  assert(age >= 0, "Age cannot be negative");

  print("Program continues...");
}