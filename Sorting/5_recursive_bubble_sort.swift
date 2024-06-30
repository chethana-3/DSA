let array = [64, 25, 12, 22, 11]

//bubble sort using recursive method in ascending order

func getArrayInIncreasingOrder(_ array: [Int], _ count: Int)->[Int]{
    if count == 0{
        return array
    }
    var a = array
    for j in 0..<count-1{
        if a[j] > a[j+1]{
            a.swapAt(j,j+1)
        }
    }
    return getArrayInIncreasingOrder(a, count - 1)
}
print(getArrayInIncreasingOrder(array,array.count))

func getArrayInDecreasingOrder(_ array: [Int], _ count: Int)->[Int]{
    if count == 0{
        return array
    }
    var a = array
    for j in 0..<count-1{
        if a[j] < a[j+1]{
            a.swapAt(j,j+1)
        }
    }
    return getArrayInDecreasingOrder(a, count - 1)
}
print(getArrayInDecreasingOrder(array,array.count))