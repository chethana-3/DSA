

//how a linked list looks

class Node {
    var value: Int
    var node: Node?

    init(_ value: Int, _ node: Node? = nil){
        self.value = value
        self.node = node
    }
}