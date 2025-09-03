/// Returns the number of digits in the given [number].
///
/// The returned length is the number of digits in the decimal representation of
/// [number]. For example, [intLength] returns 1 for 0, 3 for 123, and 4 for
/// 1234.
///
/// This function is used to facilitate the implementation of [isPalindrome].
int intLength(int number) {
  number = number.abs();
  if (number == 0) return 1;

  int length = 0;
  while (number > 0) {
    number ~/= 10;
    length++;
  }
  return length;
}
