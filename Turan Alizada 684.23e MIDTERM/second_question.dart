void main() {
  List<String> students = ["Alice", "John", "Emma"];
  bool isJohnInList = students.contains("John");
  if (isJohnInList) {
    print("John is in the list");
  } else {
    print("John is not in the list");
  }
}