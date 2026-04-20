// A closure is a function object that can still access variables from the scope where it was created, even after it has moved outside that scope. Dart defines a closure this way in its official functions docs and uses makeAdder() as the example.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

Function counter() {
  int count = 0;

  return () {
    count++;
    print(count);
  };
}

class A {
  static void bar() {}
  void baz() {}
}

void foo() {}

void main() {
  Function x = foo;
  print(foo == x); // true
  Function x1 = A.bar;
  print(A.bar == x1); // true
  var v = A();
  var w = A();
  var y = w;
  Function x2 = w.baz;
  print(y.baz == x2); // true
  print(v.baz == w.baz); // false

  var add2 = makeAdder(2);
  var add4 = makeAdder(4);

  print(add2(3)); // 5
  print(add4(3)); // 7

  var c = counter();

  c(); // 1
  c(); // 2
  c(); // 3
}