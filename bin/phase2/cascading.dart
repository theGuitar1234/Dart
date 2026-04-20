class Person {
  String name = "Thomas";
  int age = 19;
  void show() {
    print(name + " is a " + age.toString() + " years old boy");
  }

  //constructor
  void PersonConstruct(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  var person = Person(); // Object Notation
  person.show();
  person.name = "Jon";
  person.age = 21;
  person.show();

  // Cascade
  var person2 = Person()
    ..name = "Tom"
    ..age = 21
    ..show();

  var person3 = Person();
  person3.PersonConstruct("Bill", 34);
  person3.show();

  // Null shorting cascade
  String? maybeNull = "Thomas";
  var result = maybeNull
    ?..length
    ..isEmpty;
  print(result);
  
  // A cascade must operate on an actual object. 
  // If the thing before the cascade returns void.
  // var sb = StringBuffer();
  // sb.write('foo')
  //   ..write('bar'); // error
}