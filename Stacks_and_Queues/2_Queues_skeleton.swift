
import Foundation

//first in last out
//enqueue 0(1) , dequeue 0(n)

class Queue<T> {

    private var array : [T] = []

    func enqueue(_ item: T) -> T{
        array.append(item)
    }

    func dequeue() -> T?{
        if isEmpty{
            return nil
        }else{
            array.removeFirst() 
        }
        
    }

    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() -> T? {
        return array.first
    }

}
struct QueueStruct<T> {
    private var array: [T] = []
    
    mutating func enqueue(_ item: T) {
        array.append(item)
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    func peek() -> T? {
        return array.first
    }
}