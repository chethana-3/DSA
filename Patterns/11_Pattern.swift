/*
Pattern - 11: Binary Number Triangle Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
1
01
101

Input Format: N = 6
Result:   
1
01
101
0101
10101
010101
*/

let input = 6
for i in 1...input{
    for j in 1...i{        
        if((i+j)%2 == 0){
            print("1", terminator: "")
        }else{
            print("0", terminator: "")
        }
    }
    print("", terminator: "\n")
}