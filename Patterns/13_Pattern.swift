/*
Pattern - 13: Increasing Number Triangle Pattern
Problem Statement: Given an integer N, print the following pattern : 

Input Format: N = 3
Result: 
1
2 3
4 5 6

Input Format: N = 6
Result:   
1
2  3
4  5  6
7  8  9  10
11  12  13  14  15
16  17  18  19  20  21
*/

let input = 6
var num = 0
for i in 1...input{
    for j in 1...i{
        num = num+1
    print(num, terminator: " ")
    }
    print("", terminator: "\n")
}

