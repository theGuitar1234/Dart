// Lexical scope means Dart decides which variables a piece of code can use based on where that code is written in the source file. The official docs put it simply: you can follow the curly braces outward to see what is in scope.

bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      print(topLevel);
      print(insideMain);
      print(insideFunction);
      print(insideNestedFunction);
    }

    nestedFunction();
  }

  myFunction();
}
