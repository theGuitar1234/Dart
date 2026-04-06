void main() {
  var numbers = [1, 2, 3, 4, 5];
  print(numbers);
  print(numbers[0]);
  // Invalid : print(numbers[-1]);
  print(numbers.length);
  numbers.add(4);
  print(numbers);

  const fixed = [1, 2, 3];
  print(fixed);
  // Throws error : fixed.add(6);

  var set = {'USEr', 'ADMIn', 'EDITOr'};
  set.add('USEr');
  print(set); // Changes nothing

  // Braces are map in default
  var map = {};
  var realEmptySet = <String>{};
  var emptyMap = <String, int>{};

  var planets = {
    "Mercury": 1,
    "Venus": 2,
    "Earth": 3,
    "Mars": 4,
    "Jupiter": 5,
    "Saturn": 6,
    "Uranus": 7,
    "Neptune": 8,
    "Pluto": 9
  };

  print(planets["Uranus"]);

  Map<int, String> nobleGases = {
    2: 'helium',
    10: 'neon',
  };
}