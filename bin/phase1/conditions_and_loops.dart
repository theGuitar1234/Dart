import 'dart:io';

void main() {
  int score = 75;

  if (score <= 70) {
    print('D');
  } else if (score <= 80) {
    print('C');
  } else if (score <= 90) {
    print('B');
  } else if (score <= 100) {
    print('A');
  } else {
    print('Invalid Value');
  }

  for (int i = 0; i<10; i++) {
    print(i);
  }

  var names = ['Thomas', 'Aysel', 'Murad'];
  for (var name in names) {
    print(name);
  }

  int i = 5;
  while (i < 10) {
    if (i == 5) continue;
    if (i == 9) break;
    print(i);
    i++;
  }

  String? name;
  do {
    stdout.writeln("Enter Your Name : ");
    name = stdin.readLineSync();
  } while (name == "");

  outerLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('i=$i, j=$j');
      if (i == 2 && j == 2) {
        break outerLoop;
      }
    }
  }

  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    default:
      print('Unknown grade');
  }

  String status = 'CLOSED';

  switch (status) {
    case 'DENIED':
    case 'CLOSED':
      print('Access unavailable');
      break;
    case 'OPEN':
      print('Access granted');
      break;
    default:
      print('Unknown status');
  }

  String url = 'http://example.com';

  assert(url.startsWith('https'), 'URL must start with https');
}
