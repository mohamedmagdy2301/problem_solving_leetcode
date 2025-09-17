void main() {
  print(romanToInt("MCMXCIV").toString());
}

int romanToInt(String text) {
  Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };
  int totle = 0;

  for (int index = 0; index < text.length; index++) {
    int currentCharValue = romanMap[text[index]] ?? 0;
    bool isLastIndex = text.length - 1 == index;
    int nextCharValue = isLastIndex ? 0 : romanMap[text[index + 1]] ?? 0;
    if (currentCharValue >= nextCharValue) {
      totle += currentCharValue;
    } else {
      totle += (nextCharValue - currentCharValue);
      index++;
    }
  }
  return totle;
}
