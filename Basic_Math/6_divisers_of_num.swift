/*
Print all Divisors of a given Number
Problem Statement: Given an integer N, return all divisors of N.

A divisor of an integer N is a positive integer that divides N without leaving a remainder. In other words, if N is divisible by another integer without any remainder, then that integer is considered a divisor of N.
Example 1:
Input:N = 36
Output:[1, 2, 3, 4, 6, 9, 12, 18, 36]
Explanation: The divisors of 36 are 1, 2, 3, 4, 6, 9, 12, 18, 36.
Example 2:
Input:N =12
Output: [1, 2, 3, 4, 6, 12]
Explanation: The divisors of 12 are 1, 2, 3, 4, 6, 12.
*/

func giveDivisiorsOfANumber(_ x: Int) -> [Int] {
        
        var result = [Int]()
        
        for i in stride(from:1, through: x, by:1){
            if (i*i) > x{
                return result
            } 
            if(x % i == 0){
                result.append(i)
                if i != x/i {
                    result.append(x/i)
                }
            }
        }

        return  result
        
}

print(giveDivisiorsOfANumber(36))