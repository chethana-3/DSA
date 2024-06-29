// Linked list cycle
// https://leetcode.com/problems/linked-list-cycle/description/

// Definition for singly-linked list.
class Node {
    var val: Int
    var next: Node?
    init(_ val: Int, _ next: Node? = nil) { 
        self.val = val
        self.next = next
    }
 }

class LinkedList{
    func getLinkedListFromGivenNode(_ head: Node?) -> [Int]? {
        var currentNode = head
        var resultArray = [Int]()
        resultArray.append(currentNode!.val)
        while(currentNode?.next != nil){
            
            currentNode = currentNode?.next
            resultArray.append(currentNode!.val)
        }

        return resultArray
    }
}
class Solution {
    func hasCycle(_ head: Node?) -> Bool {
        var slowNode = head
        var fastNode = head
        while(fastNode != nil && fastNode?.next != nil){
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
            if slowNode === fastNode{
                return true
            }
        }
        return false
    }
}
let node5 = Node(5)
let node4 = Node(4)
let node3 = Node(3)
let node2 = Node(2)
let head = Node(1)

head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node3

let solutionInstance = Solution()
print(solutionInstance.hasCycle(head))