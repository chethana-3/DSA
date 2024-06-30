let array = [64, 25, 12, 22, 11]

//insertion sort in ascending order using recursion

func getArrayInIncreasingOrder(_ array: [Int],_ count: Int = 0)->[Int]{
    if count == array.count{
        return array
    }
        var a = array
        var j = count
        // print(a)
        loop: while(j>0){
            if(a[j] < a[j-1]){
                a.swapAt(j, j-1)
            }else{
                break loop
            }
            j -= 1
        }
    
    return getArrayInIncreasingOrder(a,count+1)
}
print(getArrayInIncreasingOrder(array))

func getArrayInDecreasingOrder(_ array: [Int],_ count: Int = 0)->[Int]{
    if count == array.count{
        return array
    }
        var a = array
        var j = count
        // print(a)
        loop: while(j>0){
            if(a[j] > a[j-1]){
                a.swapAt(j, j-1)
            }else{
                break loop
            }
            j -= 1
        }
    
    return getArrayInDecreasingOrder(a,count+1)
}
print(getArrayInDecreasingOrder(array))
