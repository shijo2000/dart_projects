import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= (number / 2); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print('Enter a positive integer:');
  String userInput = stdin.readLineSync()!;
  int num = int.tryParse(userInput) ?? -1;

  if (num >= 0) {
    if (isPrime(num)) {
      print('$num is a prime number');
    } else {
      print('$num is not a prime number');
    }
  } else {
    print('Invalid input. Please enter a positive integer.');
  }
}
