let array = [64, 25, 12, 22, 11]

//bubble sort in ascending order

func getArrayInIncreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in stride(from: a.count - 1, through: 0, by: -1){
        for j in 0..<i{
            if a[j] > a[j+1]{
                a.swapAt(j,j+1)
            }
        }
    }
    return a
}
print(getArrayInIncreasingOrder(array))

func getArrayInDecreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in stride(from: a.count - 1, through: 0, by: -1){
        for j in 0..<i{
            if a[j] < a[j+1]{
                a.swapAt(j,j+1)
            }
        }
    }
    return a
}
print(getArrayInDecreasingOrder(array))