class Person {
  String? name;
  int? age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  void show() {
    print(this.name);
    print(this.age);
  }
}

void main() {
  // var person = new Person("Bill", 87);
  // person.name = "Thomas";
  // person.age = 18;
  // person.show();

  var person2 = new Person()
    ..name = 'Jimmy'
    ..age = 54
    ..show();

  var person3 = new Person()
    ?..age = null
    ..name = 'Jimmy'
    ..show();
  
  //Can't cascade on a void method, can only cascade on an actual object

  List<int>? nums;
  print(nums?[0]);

  String name = "Thomas";
  print(name.length);
  print(name?.length);
  print(name!.length);
}