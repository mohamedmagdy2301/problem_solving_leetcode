void main() {
  int r = searchInsert([1, 3, 5, 6], 7);
  print(r.toString());
}

int searchInsert(List<int> nums, int target) {
  for (int numIndex = 0; numIndex < nums.length; numIndex++) {
    if (target <= nums[numIndex]) return numIndex;
  }
  return nums.length;
}
