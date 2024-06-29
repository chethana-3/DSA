/*
Pattern-2: Right-Angled Triangle Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
* 
* * 
* * *

Input Format: N = 6
Result:
* 
* * 
* * *
* * * *
* * * * *
* * * * * *
*/
let input = 6
for i in 0..<input{
    for _ in 0...i{
    print("* ", terminator: "")
    }
    print("", terminator: "\n")
}