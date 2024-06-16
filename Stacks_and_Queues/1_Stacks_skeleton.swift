
import Foundation

//first in last out
//push and pop are 0(1) operations
class Stack<T>{

    private var array : [T] = []

    func push(_ item: T) -> T{
        array.append(item)
    }

    func pop() -> T{
        array.popLast()
    }

    func peek() -> T{
        array.last
    }

    var isEmpty : Bool{
        array.isEmpty
    }

    var count : Int{
        array.count
    }

}

struct StackStruct<T> {

    fileprivate var array : [T] = []

    mutating func push(_ item: T) -> T{
        array.append(item)
    }

    mutating func pop() -> T{
        array.popLast()
    }

    var peek : T{
        array.last
    } 
    
    var isEmpty : Bool{
        array.isEmpty
    }

    var count : Int{
        array.count
    }

}
