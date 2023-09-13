import 'dart:io';

List<int> generateFibonacci(int n) {
  List<int> fibSeries = [0, 1];

  while (fibSeries.length < n) {
    int nextTerm = fibSeries[fibSeries.length - 1] + fibSeries[fibSeries.length - 2];
    fibSeries.add(nextTerm);
  }

  return fibSeries;
}

void main() {
  print('Enter the number of terms for the Fibonacci series:');
  String userInput = stdin.readLineSync()!;
  int numTerms = int.tryParse(userInput) ?? -1;

  if (numTerms >= 1) {
    List<int> fibonacciSeries = generateFibonacci(numTerms);
    print('The Fibonacci series with $numTerms terms is: $fibonacciSeries');
  } else {
    print('Invalid input. Please enter a positive integer.');
  }
}
