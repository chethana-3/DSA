/*
Pattern - 16: Alpha-Ramp Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
A
B B
C C C

Input Format: N = 6
Result:   
A 
B B
C C C
D D D D
E E E E E
F F F F F F
*/
let input = 6
for i in 1...input{
    for j in 1...i{
        let k = Character(UnicodeScalar(64+i)!)
    print("\(k) ", terminator: "")
    }
    print("", terminator: "\n")
}