int add(int a, int b) {
  return a + b;
}

// Method overloadding doesn't work
// int add(int a, int b, int c) { // Already defined
//   return a + b + c;
// }

// int add(int... args) { // Varargs doesn't work

// }

// Named Parameters
void greet({String? name, int? age = 0, required String email}) {
  print('Name: $name, Age: $age');
}

// Optional Positional Parameters
String introduce(String name, [String? city, String street = 'untitled']) {
  if (city != null) return 'I am $name from $city';
  return 'I am $name';
}

void printElement(int element) {
  print(element);
}

// Explicit Function Type
String shout(String text) => text.toUpperCase();

void main() {
  var numbers = [1, 2, 3];
  numbers.forEach(printElement);
  numbers.forEach((i) => print(i));

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  print(loudify('hello'));

  String Function(String) f = shout;
  print(f('dart'));  
 
  // Lambda functions
  int add(int a, int b) => a + b;
  print(add(2, 3));

  // Named Parameters
  greet(name: 'Tommy', age: 55, email: "email@email.com");
  greet(name: "Jon", email: "email@email.com");

  // Optional Positional Parameters
  print(introduce('Ali'));
  print(introduce('Ali', 'New York'));

  // Anonymous Functions
  var fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) {
    print(fruit);
  });
  var upper = fruits.map((fruit) => fruit.toUpperCase()).toList();
  print(upper);

  // Use a named function when:

  // the logic is important enough to reuse
  // the code deserves a meaningful name
  // you want cleaner structure

  // Use an anonymous function when:

  // the logic is short
  // it is only used once
  // it is passed directly into another function
}