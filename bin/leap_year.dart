import 'dart:io';

bool isLeapYear(int year) {
  if (year % 4 != 0) {
    return false;
  } else if (year % 100 != 0) {
    return true;
  } else if (year % 400 != 0) {
    return false;
  } else {
    return true;
  }
}

void main() {
  print('Enter a year:');
  String userInput = stdin.readLineSync()!;
  int year = int.tryParse(userInput) ?? -1;

  if (year >= 0) {
    if (isLeapYear(year)) {
      print('$year is a leap year');
    } else {
      print('$year is not a leap year');
    }
  } else {
    print('Invalid input. Please enter a valid year.');
  }
}
