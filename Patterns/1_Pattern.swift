/*
Pattern-1: Rectangular Star Pattern
Problem Statement: Given an integer N, print the following pattern.
Example 1:
Input: N = 3
Output: 
* * *
* * *
* * *
*/
let input = 4
for _ in 0..<input{
    for _ in 0..<input{
        print("* ", terminator: "")
    }
    print("", terminator: "\n")
}