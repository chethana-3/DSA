import Foundation
import XCTest

/*
 CheckBST
 https://www.hackerrank.com/challenges/ctci-is-binary-search-tree/problem
 
 Given the root node of a binary tree, determine if it is a binary search tree.
 
 The Node class is defined as follows:
    class Node {
        int data;
        Node left;
        Node right;
     }
*/

class Node {
    var key: Int
    var left: Node?
    var right: Node?
    
    init(_ data: Int) {
        self.key = data
    }
}

func checkBST(root: Node?) -> Bool {
    isBST(root, nil, nil)
}

func isBST(_ node: Node?, _ min: Int?, _ max: Int?) -> Bool{
    print("Comparing: \(String(describing: node?.key)) min: \(String(describing: min)) max: \(String(describing: max))")
    guard let node = node else{
        return true
    }
    
    if let min = min, node.key <= min{
        return false
    }
    if let max = max, node.key >= max{
        return false
    }
    return isBST(node.left, min, node.key) && isBST(node.right, node.key, max)
}
class Tests: XCTest{
    func case1(){
        let root = Node(4)
        root.left = Node(2)
        root.right = Node(6)
        root.left?.left = Node(1)
        root.left?.right = Node(3)
        root.right?.left = Node(5)
        root.right?.right = Node(7)
        
        XCTAssertTrue(checkBST(root: root))
    }
    func case2(){
        let root = Node(3)
        root.left = Node(2)
        root.right = Node(4)
        root.left?.left = Node(1)
        root.right?.left = Node(5)
        root.right?.right = Node(6)
        
        XCTAssertFalse(checkBST(root: root))
    }
}
