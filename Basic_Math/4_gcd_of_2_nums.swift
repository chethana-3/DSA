/*
Find GCD of two numbers
Problem Statement: Given two integers N1 and N2, find their greatest common divisor.

Example 1:
Input:N1 = 9, N2 = 12
                
Output:3
Explanation:Factors of 9: 1, 3 and 9
Factors of 12: 1, 2, 3, 4, 6, 12
Common Factors: 1, 3 out of which 3 is the greatest hence it is the GCD.
Example 2:
Input:N1 = 20, N2 = 15
                
Output: 5
Explanation:Factors of 20: 1, 2, 4, 5
Factors of 15: 1, 3, 5
Common Factors: 1, 5 out of which 5 is the greatest hence it is the GCD.
*/

func isPalindrome(_ x: Int) -> Bool {
        if x < 0{
            return false
        }
        
        var reverseOfANumber = Int()
        var actualNumberCopy = x
        while(actualNumberCopy > 0){
            let reminder = actualNumberCopy%10
            actualNumberCopy = actualNumberCopy/10
            reverseOfANumber = (reverseOfANumber*10) + reminder
        }

        return  reverseOfANumber == x
        
}

print(isPalindrome(2002))