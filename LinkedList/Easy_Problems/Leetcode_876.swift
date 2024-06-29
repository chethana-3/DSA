import Foundation
// Middle of linked list
// https://leetcode.com/problems/middle-of-the-linked-list/description/

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
    func middleNode(_ head: Node?) -> [Int]? {
        var slowPointer = head
        var fastPointer = head
        let linkedListInstance = LinkedList()
        while(fastPointer?.next != nil){
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
        }

        return linkedListInstance.getLinkedListFromGivenNode(slowPointer)
    }
}
let node3 = Node(1)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

let solutionInstance = Solution()
print(solutionInstance.middleNode(node1) ?? "")