import 'dart:io';

bool isPalindrome(String input) {
  // Remove spaces and convert to lowercase for case-insensitive comparison
  input = input.replaceAll(' ', '').toLowerCase();

  // Check if the string is the same when reversed
  return input == input.split('').reversed.join('');
}

void main() {
  print("Enter a string to check if it's a palindrome:");

  // Read user input from the console
  String input = stdin.readLineSync() ?? '';

  if (isPalindrome(input)) {
    print('$input is a palindrome.');
  } else {
    print('$input is not a palindrome.');
  }
}