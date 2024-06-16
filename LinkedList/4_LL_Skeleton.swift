import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkList {
    private var head: Node?
        
    func addFront(_ data: Int) {
        let firstNode = Node(data)
        firstNode.next = head
        head = firstNode
    }

    func getFirst() -> Int? {
        guard let head = head else{
            return nil
        }
        return head.data
    }

    func addBack(_ data: Int) {
        let lastNode = Node(data)
        
        if head?.next == nil{
            head = lastNode
            return
        }
        var node = head
        while(node?.next != nil){
            node = node?.next
        }
        node?.next = lastNode
        
    }

    func getLast() -> Int? {
        guard let head = head else{
            return nil
        }
        
        var node = head
        while (node.next != nil){
            node = node.next!
        }
        
        return node.data
    }

    func insert(position: Int, data: Int) {
        if position == 0 {
            addFront(data)
            return
        }
        let newNode = Node(data)
        var currentNode = head
        
        for _ in 0..<position - 1{
            currentNode = currentNode?.next
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    func deleteFirst() {
        
        head = head?.next
    }

    func deleteLast() {
        if head == nil {
            return
        }
        var currentNode = head
        var nextNode = currentNode?.next
        
        while (nextNode?.next != nil){
            currentNode = currentNode?.next
            nextNode = nextNode?.next
            
        }
        currentNode?.next = nil
    }
    
    func delete(at position: Int) {
        if position == 0{
            return deleteFirst()
        }
        
        var previousNode = head
        var currentNode = previousNode?.next
        
        for _ in 1..<position {
            
            currentNode = currentNode?.next
            previousNode = previousNode?.next
            
        }
        
        previousNode?.next = currentNode?.next
        
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func clear() {
        head = nil
        return
    }
    
    func printLinkedList() {
        if head == nil { return }
        
        var result = [Int]()
        var node = head
        result.append(node!.data)
        
        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }
        
        print(result)
    }
}

let linkedList = LinkList()
linkedList.addFront(3)
linkedList.addFront(2)
linkedList.addFront(1)


print(linkedList.getFirst() ?? "nil")

linkedList.addBack(30)
print(linkedList.getLast() ?? "nil")
linkedList.insert(position: 2, data: 100)
linkedList.deleteFirst()
linkedList.deleteLast()
linkedList.printLinkedList()
linkedList.delete(at: 4)
linkedList.printLinkedList()
print(linkedList.isEmpty)
linkedList.clear()
print(linkedList.printLinkedList())





