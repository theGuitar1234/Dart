void main() {
  var numbers = [10, 20, 30];
  print(numbers[1]);

  var student = {
    'name': 'Ali',
    'age': 19
  };
  print(student['name']);

  List<int>? nums;
  print(nums?[0]); // returns null instead of crashing in case if the list is null

  
}