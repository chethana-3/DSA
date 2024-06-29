// two sum
// https://leetcode.com/problems/two-sum/description/

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict = [Int:Int]()//[value:index]

        for (index,val) in nums.enumerated(){
            let complement = target - val
            if let complementIndex = numDict[complement]{
                return [complementIndex,index]
            }
            numDict[val] = index
        }
        return []
    }
print(twoSum([2,7,11,15], 9))