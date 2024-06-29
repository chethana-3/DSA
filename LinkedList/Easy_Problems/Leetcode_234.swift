// Palindrome Linked List
// https://leetcode.com/problems/palindrome-linked-list/description/

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
    //using arrays and 2 pointers
    func isPalindrome1(_ head: Node?) -> Bool {
        var currentNode = head
        var array = [Int]()

        while(currentNode != nil){
            array.append(currentNode!.val)
            currentNode = currentNode?.next
        }
        var leftPointer = 0
        var rightPointer = array.count - 1
        while(leftPointer <= rightPointer){
            if(array[leftPointer] == array[rightPointer]){
               leftPointer += 1
               rightPointer -= 1
            }else{
                return false
            }
        }
        return true
    }
//using median of ll,two pointers
func isPalindrome2(_ head: Node?) -> Bool {
        if head == nil || head?.next == nil{
            return true
        }
        var slowNode = head
        var fastNode = head
        while(fastNode?.next?.next != nil && slowNode?.next != nil){
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
        }
        var firstHalf = head
        var secondHalfReversed = reverseLinkedList(slowNode?.next)
        while(secondHalfReversed != nil){
            if(secondHalfReversed?.val != firstHalf?.val){
                return false
            }else{
                firstHalf = firstHalf?.next
                secondHalfReversed = secondHalfReversed?.next
            }
        }
        return true
    }
    func reverseLinkedList(_ head: Node?) -> Node?{
        var previousNode : Node? = nil
        var currentNode = head
        while(currentNode != nil){
            let nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        } 
        return previousNode
    }
    }
let node3 = Node(3)
let node2 = Node(2, node3)
let node1 = Node(3, node2)

let solutionInstance = Solution()
print(solutionInstance.isPalindrome1(node1))
print(solutionInstance.isPalindrome2(node1))