void main() {
  String text = "()[(])]{}";

  print(isValid(text));
}

// My solution
bool isValid(String text) {
  if (text.length.isOdd) return false;
  Map<String, String> charParentheses = {"(": ")", "{": "}", "[": "]"};
  List<String> stack = [];
  for (int index = 0; index < text.length; index++) {
    if (charParentheses.keys.contains(text[index])) {
      stack.add(text[index]);
    } else {
      if (stack.isEmpty) return false;
      String lastElement = stack.removeLast();
      if (text[index] != charParentheses[lastElement]) return false;
    }
  }
  return stack.isEmpty;
}

// Better solution
bool isValid2(String text) {
  if (text.length.isOdd) return false;
  Map<String, String> charParentheses = {"(": ")", "{": "}", "[": "]"};
  List<String> stack = [];
  for (int index = 0; index < text.length; index++) {
    if (charParentheses.containsKey(text[index])) {
      stack.add(text[index]);
    } else if (stack.isEmpty ||
        text[index] != charParentheses[stack.removeLast()]) {
      return false;
    }
  }
  return stack.isEmpty;
}
