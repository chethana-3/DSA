import Foundation

//reverse a given array

//brute approach
func reversedArray(_ array: [Int]) -> [Int]{
    var resultArray = [Int]()

    for i in stride(from: array.count - 1, through: 0, by: -1){
        resultArray.append(array[i])
    }
    return resultArray
}
print(reversedArray([1,2,3,4,5]))

//two pointer approach
func reverseArrayUsing2Pointer(_ array: [Int]) -> [Int]{

    var resultArray = array
    var leftPointer = 0
    var rightPointer = array.count - 1

    while(leftPointer <= rightPointer){
        resultArray.swapAt(leftPointer, rightPointer)
        leftPointer += 1
        rightPointer -= 1
    }
    return resultArray
}
print(reverseArrayUsing2Pointer([1,2,3,4,5]))
