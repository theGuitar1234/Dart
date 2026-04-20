// Effective Dart recommends throwing objects that implement
// Error only for programmatic errors, and not explicitly
// catching Error types in normal app logic.
// In plain English: use exceptions for
// expected failure scenarios like
// bad input or missing files;
// reserve Error for bugs
// and broken assumptions.

class AgeException implements Exception {
  final String message;
  AgeException(this.message);

  @override
  String toString() => 'AgeException: $message';
}

void main() {
  int age = 0;
  if (age == 0) {
    throw StateError("You haven't been borned yet");
  }
  if (age < 18) {
    throw AgeException("You can't view this content");
  }

  try {
    print(2 / 0);
  } catch (e, s) {
    print('Something went wrong $e');
    print('Stack trace $s');
  } finally {
    print("This always runs in the end");
  }

  try {
    throw FormatException('Bad format');
  } on FormatException catch (e) {
    print('Format problem: $e');
  }

  // If you don't need the error or stack trace
  try {
    print(2 / 0);
  } on Exception {
    print('Can\'t divide by zero');
  }

  try {
    risky();
  } catch (e) {
    print("error: $e");
    rethrow; //throws it batch
  }
}


// Dart's error-handling tutorial and Effective Dart also cover rethrow. rethrow lets you catch an exception, do something with it, and then throw the same exception again while preserving its original stack information. Effective Dart specifically recommends rethrow for rethrowing a caught exception.
void risky() {
  throw Exception("Failure");
}
