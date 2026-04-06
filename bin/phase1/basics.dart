
// This is a single line comment
/* This is also a single line comment */
/**
 * This
 * is
 * a
 * multi-line
 * comment
 */
///
/// Documentation Comment
/// 
void main() {
  // int class = 5; -> Bad
  /**
   * Reserved keywords : class, if, else, for, return, const, final, late, try, catch, await
   */

  var firstName = "Thomas";
  print(firstName);
  var lastName = 'Thomas';
  print(lastName);

  int age = 18;
  int expectedLifeLongevity = 100 - age;
  print('expectedLifeLongevity $expectedLifeLongevity');
  // print('expectedLifeLongevity ${expectedLifeLongevity}');

  double pi = 3.1415926368;
  double e = 2.7182818459;
  
  bool isAlive = false;
  print("Result: ${pi + e}, isAlive $isAlive");

  // String nullName = null;
  // String? nullName = null;
  String? nonInitialized; // null
  print(nonInitialized);

  late String name;

  name = 'Thomas';
  print(name);

  String variable;
  variable = "value";
  print(variable);

  final finalVariable = "finalValueAtRuntime";
  const constant = "constantVariableAtCompileTime";
  print(finalVariable + ' ' + constant);
}