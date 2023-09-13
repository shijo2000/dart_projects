void main() {
  try {
    // Code that may throw an exception
    var result = 10 ~/ 0; // Division by zero will throw an exception
    print('Result: $result'); // This line will not be executed
  } catch (e) {
    // Catch the exception and handle it
    print('An exception occurred: $e');
  } finally {
    // This block is executed regardless of whether an exception occurred or not
    print('Finally block executed.');
  }

  // Code continues to run after exception handling
  print('Program continues to execute.');
}