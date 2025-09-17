void main() {
  print(lengthOfLastWord("   fly me   to   the moon  ").toString());
}

int lengthOfLastWord(String text) {
  return text.trim().split(" ").last.length;
}
