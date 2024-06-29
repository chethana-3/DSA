// Reverse linked list
// https://leetcode.com/problems/reverse-linked-list/description/

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
    //Using 2 pointers
    func reverseList(_ head: Node?) -> [Int]? {
        let linkedListInstance = LinkedList()
        var previousNode : Node?
        var currentNode = head
        while(currentNode != nil){
            let nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        return linkedListInstance.getLinkedListFromGivenNode(previousNode)
    }
    //using recursion
}
let node3 = Node(4)
let node2 = Node(2, node3)
let node1 = Node(3, node2)

let solutionInstance = Solution()
print(solutionInstance.reverseList(node1) ?? "")