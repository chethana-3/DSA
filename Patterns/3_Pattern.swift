/*
Pattern - 3: Right-Angled Number Pyramid
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
1
1 2 
1 2 3

Input Format: N = 6
Result:
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1 2 3 4 5 6
*/
let input = 6
for i in 1...input{
    for j in 1...i{
    print("\(j) ", terminator: "")
    }
    print("", terminator: "\n")
}