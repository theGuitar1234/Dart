String checkAge(int age) {
  if (age >= 18) return 'Adult';
  
  return 'Minor';
}

foo() {}

// Returning multiple values
(String, int) getUserInfo() {
  return ('Ali', 19);
}

void main() {
  print(foo()); // null

  var info = getUserInfo();
  print(info.$1); // Ali
  print(info.$2); // 19
}