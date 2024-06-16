
import Foundation

class Node{
    var val : Int
    var next : Node?

    init (_ val: Int, _ next: Node? = nil){
        self.val = val
        self.next = next
    }
}

class LinkedList{
    func getList(_ head: Node?) -> [Int]?{
        guard let head = head else {
            return nil
        }
        var resultArray = [Int]()
        var currentNode = head
        resultArray.append(currentNode.val)
        while(currentNode.next != nil){
            currentNode = currentNode.next!
            resultArray.append(currentNode.val)
        }
        return resultArray
    }
}

let linkedList = LinkedList()
let l1_3 = Node(3)
let l1_2 = Node(2, l1_3)
let l1_1 = Node(1, l1_2)

let l2_4 = Node(4)
let l2_3 = Node(3, l2_4)
let l2_2 = Node(2, l2_3)
let l2_1 = Node(1, l2_2)

print(linkedList.getList(l1_1) ?? "")
print(linkedList.getList(l2_1) ?? "")

func addTwoNumbers(_ l1: Node?, _ l2: Node?) -> [Int]? {
    var l1 = l1
    var l2 = l2
    let linkedList = LinkedList()
    var l3 = Node(0)
    let head = l3
    var carry = 0

    while(l1 != nil || l2 != nil || carry != 0){
        let currentNode = Node(0)
        let value = (l1 == nil ? 0 : l1!.val) + (l2 == nil ? 0 : l2!.val)
        carry = value / 10
        currentNode.val = value % 10
        l3.next = currentNode
        l3 = currentNode
        l1 = l1?.next == nil ? nil : l1?.next
        l2 = l2?.next == nil ? nil : l2?.next
    }
    return linkedList.getList(head.next)
}
print(addTwoNumbers(l1_1,l2_1) ?? "")