let array = [64, 25, 12, 22, 11]

//insertion sort in ascending order

func getArrayInIncreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in stride(from: 1, to: a.count, by: 1){
        var j = i
        // print(a)
        loop: while(j>0){
            if(a[j] < a[j-1]){
                a.swapAt(j, j-1)
            }else{
                break loop
            }
            j -= 1
        }
    }
    return a
}
print(getArrayInIncreasingOrder(array))

func getArrayInDecreasingOrder(_ array: [Int])->[Int]{
    var a = array
    for i in stride(from: 1, to: a.count, by: 1){
        var j = i
        loop :while(j>0){
            if a[j] > a[j-1]{
                a.swapAt(j-1, j)
            }else{
                break loop
            }
            j -= 1
        }
    }
    return a
}
print(getArrayInDecreasingOrder(array))