let array = [64, 25, 12, 22, 11]

//selection sort in ascending order

func getArrayInIncreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in 0..<a.count - 1{
        var min = i
        for j in i+1..<a.count{
            if a[j] < a[min]{
                min = j
            }
        }
        if min != i{
            a.swapAt(min,i)
        }
        
    }
    return a
}
print(getArrayInIncreasingOrder(array))

func getArrayInDecreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in 0..<a.count - 1{
        var max = i
        for j in i+1..<a.count{
            if a[j] > a[max]{
                max = j
            }
        }
        if max != i{
        a.swapAt(max,i)
        }
    }
    return a
}
print(getArrayInDecreasingOrder(array))
 
