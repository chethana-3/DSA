/*
Pattern-14: Increasing Letter Triangle Pattern
Problem Statement: Given an integer N, print the following pattern :
Input Format: N = 3
Result: 
A
A B
A B C

Input Format: N = 6
Result:   
A
A B
A B C
A B C D
A B C D E
A B C D E F
*/
let input = 6
for i in 1...input{
    for j in 1...i{
        let c = Character(UnicodeScalar(64+j)!)
    print("\(c) ", terminator: "")
    }
    print("", terminator: "\n")
}