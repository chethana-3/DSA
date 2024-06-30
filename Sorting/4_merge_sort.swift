let array = [64, 25, 12, 22, 11]

//merge sort in ascending order -> Divide and merge

//Divide
func mergeSortInIncreasingOrder(_ array: [Int])->[Int]{
    guard array.count > 1 else{
        return array
    }

    let middleIndex = array.count/2
    let leftArray = Array(array[0..<middleIndex])
    let rightArray = Array(array[middleIndex..<array.count])

    return mergeInIncreasingOrder(left: mergeSortInIncreasingOrder(leftArray), right: mergeSortInIncreasingOrder(rightArray))
}
//merge
func mergeInIncreasingOrder(left:[Int], right:[Int])->[Int]{
    var l = 0
    var r = 0
    var mergedArray = [Int]()

    while(l < left.count && r < right.count){
        if(left[l] < right[r]){
            mergedArray.append(left[l])
            l += 1
        }else{
            mergedArray.append(right[r])
            r += 1
        }
    }

// append remaining elements
    while(l<left.count){
        mergedArray.append(left[l])
        l += 1
    }
    while(r<right.count){
        mergedArray.append(right[r])
        r += 1
    }
    return mergedArray
}

print(mergeSortInIncreasingOrder(array))

func mergeSortInDeccreasingOrder(_ array: [Int])->[Int]{
    guard array.count > 1 else{
        return array
    }

    let middleIndex = array.count/2
    let leftArray = Array(array[0..<middleIndex])
    let rightArray = Array(array[middleIndex..<array.count])

    return mergeInDeccreasingOrder(left: mergeSortInDeccreasingOrder(leftArray), right: mergeSortInDeccreasingOrder(rightArray))
}
//merge
func mergeInDeccreasingOrder(left:[Int], right:[Int])->[Int]{
    var l = 0
    var r = 0
    var mergedArray = [Int]()

    while(l < left.count && r < right.count){
        if(left[l] > right[r]){
            mergedArray.append(left[l])
            l += 1
        }else{
            mergedArray.append(right[r])
            r += 1
        }
    }

// append remaining elements
    while(l<left.count){
        mergedArray.append(left[l])
        l += 1
    }
    while(r<right.count){
        mergedArray.append(right[r])
        r += 1
    }
    return mergedArray
}

print(mergeSortInDeccreasingOrder(array))