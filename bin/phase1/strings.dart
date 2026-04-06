void main() {
  num bothIntAndDouble = 3.3332312;
  num bothIntAndDouble2 = 23;
  print(bothIntAndDouble2 + bothIntAndDouble);

  var one = int.parse('1');
  double onePointOne = double.parse('1.1');
  print(one + onePointOne);

  num number = 3.1415926368;
  String numAsString = "\"" + number.toString() + "\"";
  String escape = "My brain's gone!";
  print(numAsString + escape);

  String multiLineText = """
    As a dependency (scope provided), Lombok hooks your IDE and lets your code compile locally.
    As an annotationProcessorPath, Lombok runs during Maven compilation to generate the
    boilerplate. There is no need for runtime because Lombok generates bytecode, there is nothing
    to ship. Use <optional>true</optional> to prevent the leak transitively. 
  """;

  print(multiLineText);

  var path = r'C:\Users\user\Desktop';
  print(path);

  // if (5) {}

  bool isPassed = true;
  if (isPassed) print("Congrats");

  int age = 22;
  if (age > 18 && age < 25) {
    print('You are a man-child');
  }

  print(57 ~/ 3);
  print(57 % 2);

  String name = "Thomas";
  print(name is String);
  print(name is! int);

  double nummber = 34.3;
  print(nummber as double);

  // name?.
  // name??
  // name??=
}
