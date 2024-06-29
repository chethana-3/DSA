/*
Pattern-5: Inverted Right Pyramid
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
* * *
* * 
*

Input Format: N = 6
Result:
* * * * * *
* * * * * 
* * * * 
* * * 
* * 
* 

*/
let input = 6
for i in 1...input{
    for j in 0...input-i{
    print("* ", terminator: "")
    }
    print("", terminator: "\n")
}