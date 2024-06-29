/*
Check if a number is prime or not
Problem Statement: Given an integer N, check whether it is prime or not. 
A prime number is a number that is only divisible by 1 and itself and the total number of divisors is 2.

Example 1:
Input:N = 2
Output:True
Explanation: 2 is a prime number because it has two divisors: 1 and 2 (the number itself).
Example 2:
Input:N =10
Output: False
Explanation: 10 is not prime, it is a composite number because it has 4 divisors: 1, 2, 5 and 10.
*/

func primeNumOrNot(_ x: Int) -> Bool {
        
        var count = 0
        
        for i in stride(from:1, through: x, by:1){
            if (i*i) > x{
                return count == 2
            } 
            if(x % i == 0){
                count += 1
                if i != x/i {
                    count += 1
                }
            }
        }

        return  count == 2
        
}

print(primeNumOrNot(17))