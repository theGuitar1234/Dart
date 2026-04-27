void main() {
  send(text: "Hello", to: "John");
}

void send({String? text, String? to}) {
  print("Sending '$text' to $to");
}