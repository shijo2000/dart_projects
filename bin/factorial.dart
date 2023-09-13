import 'dart:io';

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  print('Enter a non-negative integer:');
  String userInput = stdin.readLineSync()!;
  int num = int.tryParse(userInput) ?? -1;

  if (num >= 0) {
    int result = factorial(num);
    print('The factorial of $num is $result');
  } else {
    print('Invalid input. Please enter a non-negative integer.');
  }
}
