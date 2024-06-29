/*
Pattern - 4: Right-Angled Number Pyramid - II
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
1
2 2 
3 3 3

Input Format: N = 6
Result:
1
2 2
3 3 3
4 4 4 4
5 5 5 5 5
6 6 6 6 6 6
*/
let input = 6
for i in 1...input{
    for j in 1...i{
    print("\(i) ", terminator: "")
    }
    print("", terminator: "\n")
}