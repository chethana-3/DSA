//Reverse a given Array

// Print N to 1 using Recursion

func getReverse(_ array: inout [Int], _ end: Int, _ start: Int = 0){
    if start >= end{
        return 
    }
    array.swapAt(start,end)
    getReverse(&array, end-1, start+1)
}
var array = [1,2,3,4,5]
getReverse(&array, array.count-1)
print(array)