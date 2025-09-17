void main() {
  List<String> strs = ["flower", "flow", "flowight"];
  print(longestCommonPrefix(strs));
}

// My solution
String longestCommonPrefix(List<String> strs) {
  String prefix = strs[0];

  for (int i = 0; i < strs.length; i++) {
    if (!strs[i].startsWith(prefix)) {
      i = 0;
      prefix = prefix.substring(0, prefix.length - 1);
    }
  }
  return prefix;
}

// Better solution
String longestCommonPrefix2(List<String> strs) {
  if (strs.isEmpty) return "";
  for (int i = 0; i < strs[0].length; i++) {
    String c = strs[0][i];
    for (int j = 1; j < strs.length; j++) {
      if (i == strs[j].length || strs[j][i] != c) {
        return strs[0].substring(0, i);
      }
    }
  }
  return strs[0];
}

//  Best solution
String longestCommonPrefix3(List<String> strs) {
  if (strs.isEmpty) return "";
  strs.sort();
  String first = strs[0];
  String last = strs[strs.length - 1];
  int i = 0;
  while (i < first.length && i < last.length && first[i] == last[i]) {
    i++;
  }
  return first.substring(0, i);
}

// Another solution
String longestCommonPrefix4(List<String> strs) {
  if (strs.isEmpty) return "";
  String prefix = strs[0];
  for (int i = 1; i < strs.length; i++) {
    while (strs[i].indexOf(prefix) != 0) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return "";
    }
  }
  return prefix;
}
