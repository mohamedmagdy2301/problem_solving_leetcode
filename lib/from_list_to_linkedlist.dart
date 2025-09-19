ListNode? toLinkedList(List nums) {
  if (nums.isEmpty) return null;
  ListNode head = ListNode(nums.first);
  ListNode current = head;
  for (var i = 1; i < nums.length; i++) {
    current.next = ListNode(nums[i]);
    current = current.next!;
  }
  return current;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
