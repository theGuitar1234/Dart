String welcome(String name, {String greeting = 'Hello'}) {
  return '$greeting, $name';
}

void showMessage(String message) {
  print(message);
}

void main(List<String> args) {
  print(welcome('Ali'));
  print(welcome('Aysel', greeting: 'Hi'));

  var messages = ['dart', 'flutter', 'functions'];

  // named function passed as argument
  messages.forEach(showMessage);

  // anonymous function
  messages.forEach((msg) {
    print(msg.toUpperCase());
  });

  // function stored in a variable
  var exclaim = (String text) => '$text!';
  print(exclaim('Done'));

  print(args);
}