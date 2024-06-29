// Convert Binary number in a linked list to Integer
// https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/description/


//   Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {

        if head == nil{
            return Int()
        }
        var finalString = ""
        var currentNode = head
        finalString += String(currentNode!.val)
        while(currentNode?.next != nil){
            currentNode = currentNode!.next
            finalString += String(currentNode!.val)
        }
        return Int(finalString, radix: 2) ?? 0

    }
}
let node3 = ListNode(1)
let node2 = ListNode(1, node3)
let node1 = ListNode(1, node2)

let solutionInstance = Solution()
print(solutionInstance.getDecimalValue(node1))