import 'dart:math';

import 'package:leetcode/length_num.dart';

void main() {
  print(isPalindrome(121)); // true
  print(isPalindrome(-121)); // false
  print(isPalindrome(12321)); // true
  print(isPalindrome(123)); // false
}

/// Checks whether [number] is a palindrome.
///
/// A palindrome is a number or a text phrase that reads the same backwards as
/// forwards. For example, each of the following five-digit integers is a
/// palindrome: 12321, 55555, 45554.
bool isPalindrome(int number) {
  if (number < 0) return false;
  int len = intLength(number);
  for (int numIndex = 0; numIndex < len ~/ 2; numIndex++) {
    int frontDigit = (number ~/ pow(10, len - numIndex - 1)) % 10;
    int backDigit = (number ~/ pow(10, numIndex)) % 10;
    if (frontDigit != backDigit) {
      return false;
    }
  }
  return true;
}

// Anther way

/// Checks whether [number] is a palindrome.
///
/// A palindrome is a number or a text phrase that reads the same backwards as
/// forwards. For example, each of the following five-digit integers is a
/// palindrome: 12321, 55555, 45554.
bool isPalindrome2(int number) {
  if (number < 0) return false;

  int original = number;
  int reversed = 0;

  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  return original == reversed;
}
