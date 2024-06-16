// https://leetcode.com/problems/median-of-two-sorted-arrays/description/

//My initial solution
// It has a time complexity of O((m+n)log⁡(m+n))O((m+n)log(m+n)) due to the merging and sorting operation.
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        let mergedArray = (nums1 + nums2).sorted()
        if (mergedArray.count % 2 == 0){
            return Double(mergedArray[mergedArray.count/2 - 1] + mergedArray[mergedArray.count/2])/2
        }else{
            return Double(mergedArray[mergedArray.count/2])
        }
    }
}

//optimised solution using Binary search 