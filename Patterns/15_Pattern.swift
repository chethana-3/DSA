/*
Pattern-15: Reverse Letter Triangle Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
A B C
A B
A

Input Format: N = 6
Result:   
A B C D E F
A B C D E 
A B C D
A B C
A B
A
*/
let input = 6
for i in 1...input{
    for j in 1...input-i+1{
        let k = Character(UnicodeScalar(64+j)!)
    print("\(k) ", terminator: "")
    }
    print("", terminator: "\n")
}