
class Node{
    var data : Int
    var next : Node?

    init(_ data: Int, _ next: Node? = nil){
        self.data = data
        self.next = next
    }
}

// create linked list

let node3 = Node(3)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

//print linked list

func printSimpleLinkedList(_ head : Node?){

    guard let head = head  else{
        return
    }
    
    var node = head
    print(node.data)
    while node.next != nil{
        print(node.next!.data)
        node = node.next!
    }

}

printSimpleLinkedList(node1)