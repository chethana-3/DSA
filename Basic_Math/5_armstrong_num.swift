/*
Check if a number is Armstrong Number or not
Problem Statement: Given an integer N, return true it is an Armstrong number otherwise return false.
An Amrstrong number is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
Example 1:
Input:N = 36
Output:[1, 2, 3, 4, 6, 9, 12, 18, 36]
Explanation: The divisors of 36 are 1, 2, 3, 4, 6, 9, 12, 18, 36.
Example 2:
Input:N =12
Output: [1, 2, 3, 4, 6, 12]
Explanation: The divisors of 12 are 1, 2, 3, 4, 6, 12.
*/

func isAmrstrong(_ x: Int) -> Bool {
        if x < 0{
            return false
        }
        
        var reverseOfANumber = Int()
        var actualNumberCopy = x
        while(actualNumberCopy > 0){
            let reminder = actualNumberCopy%10
            actualNumberCopy = actualNumberCopy/10
            reverseOfANumber +=  (reminder * reminder * reminder)
        }

        return  reverseOfANumber == x
        
}

print(isAmrstrong(3711))