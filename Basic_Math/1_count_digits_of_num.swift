/*
Count digits in a number
Problem Statement: Given an integer N, return the number of digits in N.

Example 1:
Input:N = 12345
Output:5
Explanation:  The number 12345 has 5 digits.
Example 2:
Input:N = 7789
Output: 4
Explanation: The number 7789 has 4 digits.
*/

let input = 1234591

var dummy = input
var result = 0

while(dummy>0){
    result += 1
    dummy = dummy/10
}
print(result)