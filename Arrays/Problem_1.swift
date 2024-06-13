/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]

 */

 func solution(A: [Int], K: Int) -> [Int] {
    if A.isEmpty{
        return A
    }
    // do your work here...
    var A = A
    var count = 0
    while (count < K && A.count > 0){
        let removedElement = A.removeLast()
        A.insert(removedElement, at: 0)
        count += 1
    }
    return A
}

print(solution(A: [1, 2, 3, 4, 5], K: 6)) // 5 1 2 3 4
print(solution(A: [1, 2, 3, 4, 5], K: 2)) // 4 5 1 2 3
print(solution(A: [1, 2, 3, 4, 5], K: 3)) // 3 4 5 1 2

print(solution(A: [3, 8, 9, 7, 6], K: 3)) // [9, 7, 6, 3, 8]


//Most optimal solution
func soultionB(array: [Int], k: Int) -> [Int]{
    if array.isEmpty{
        return array
    }
    let effectiveK = K % array.count
    if effectiveK == 0{
        return array
    }

    let rotatedArray = Array(A[n - effectiveK..<n] + A[0..<n - effectiveK])
    return rotatedArray
}