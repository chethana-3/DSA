/*
Pattern - 6: Inverted Numbered Right Pyramid
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
1 2 3
1 2
1

Input Format: N = 6
Result:
1 2 3 4 5 6
1 2 3 4 5
1 2 3 4
1 2 3
1 2 
1
*/
let input = 6
for i in 1...input{
    for j in 1...input-i+1{
    print("\(j) ", terminator: "")
    }
    print("", terminator: "\n")
}