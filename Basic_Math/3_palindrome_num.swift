/*
Check if a number is Palindrome or Not
Problem Statement: Given an integer N, return true if it is a palindrome else return false.

A palindrome is a number that reads the same backward as forward. For example, 121, 1331, and 4554 are palindromes because they remain the same when their digits are reversed.
Example 1:
Input:N = 4554
Output:Palindrome Number
Explanation: The reverse of 4554 is 4554 and therefore it is palindrome number
Example 2:
Input:N = 7789
Output: Not Palindrome
Explanation: The reverse of number 7789 is 9877 and therefore it is not palindrome

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