import Foundation

class Node{
    var key : Int = 0
    var left : Node?
    var right : Node?

    init(_ key: Int){
        self.key = key
    }

    var min : Node {
        if left == nil{
            return self
        }else{
            return left!.min
        }
    }
}

class BST{
    var root : Node?
    
    func find(_ key: Int) -> Int?{
        guard let root = root else{
            return nil
        }
        guard let node = find(root, key) else {return nil}
        return node.key
    }

    func find(_ node: Node?, _ key: Int) -> Node?{

        guard let root = node else{
            return nil
        }
        if root.key == key{
            return root
        }else if root.key > key{
            return find(root.right,key)
        }else if root.key < key{
            return find(root.left,key)
        }

        return nil
    }
    func insert(key: Int){
        
        root = insertItem(root, key)
    }
    func insertItem(_ node: Node? , _ key: Int) -> Node{
        guard let node = node else{
            let node = Node(key)
            return node
        }
        if key < node.key{
            node.left =  insertItem(node.left, key)
        }
        if key > node.key{
            node.right = insertItem(node.right, key)
        }

        return node
    }
    func delete(_ key: Int){
        guard let _ = root else { return }
        root = deleteItem(&root, key);
    }
    func deleteItem(_ node: inout Node?, _ key: Int) -> Node? {
        guard let nd = node else{
            return nil
        }
        //here if and if else helps to traverse to the particular node that we want to delete
        if key < nd.key{
            nd.left = deleteItem(&nd.left, key)
        }else if key > nd.key{
            nd.right = deleteItem(&nd.right, key)
        } else{
            //once we reach the node which we want to delete

            //if node has no child
            if(nd.left == nil && nd.right == nil){
                return nil
            }

            //if node has one child
            else if(nd.left == nil){
                return nd.right
            }else if(nd.right == nil){
                return nd.left
            }

            //if node has two children
            else{
                let minNode = findMin(nd.right!)

                nd.key = minNode.key

                nd.right = deleteItem(&nd.right, nd.key)
            }
        }
        return nd
    }
    func findMin() -> Int {
        guard let root = root else { return 0 }
        return findMin(root).key;
    }
    private func findMin(_ node: Node) -> Node {
        return node.min;
    }


    func prettyPrint() {
        // Hard code print for tree depth = 3
        let rootLeftKey = root?.left == nil ? 0 : root?.left?.key
        let rootRightKey = root?.right == nil ? 0 : root?.right?.key
        
        var rootLeftLeftKey = 0
        var rootLeftRightKey = 0
        
        if root?.left != nil {
            rootLeftLeftKey = root?.left?.left?.key ?? 0 
            rootLeftRightKey = root?.left?.right?.key ?? 0  
        }
        
        var rootRightLeftKey = 0
        var rootRightRightKey = 0
        
        if root?.right != nil {
            rootRightLeftKey = root?.right?.left?.key ?? 0 
            rootRightRightKey = root?.right?.right?.key ?? 0  
        }
     
        let str = """
                       \(root!.key)
                    /    \\
                   \(rootLeftKey!)      \(rootRightKey!)
                  / \\    /  \\
                 \(rootLeftLeftKey)   \(rootLeftRightKey)  \(rootRightLeftKey)    \(rootRightRightKey)
        """
        
        print(str)
    }
    func printInOrderTravseral() { inOrderTraversal(node: root) }
    func inOrderTraversal(node: Node?) {
        guard let node = node else { return }
        inOrderTraversal(node: node.left)
        print(node.key) // root
        inOrderTraversal(node: node.right)
    }
    
    func printPreOrderTravseral() { preOrderTraversal(node: root) }
    
    func preOrderTraversal(node: Node?) {
        guard let node = node else { return }
        print(node.key) // root
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }

    func printPostOrderTravseral() { postOrderTraversal(node: root) }
    
    func postOrderTraversal(node: Node?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        print(node.key) // root
    }
}
 let bst = BST()
 bst.insert(key: 5)
 bst.insert(key: 3)
 bst.insert(key: 2)
 bst.insert(key: 4)
 bst.insert(key: 7)
 bst.insert(key: 6)
 bst.insert(key: 8)
 bst.prettyPrint()
 bst.printInOrderTravseral()
 print()
 bst.printPreOrderTravseral()
 print()
 bst.printPostOrderTravseral()
 