/*
Pattern - 12: Number Crown Pattern
Problem Statement: Given an integer N, print the following pattern : 

Input Format: N = 3
Result: 
1    1
12  21
123321

Input Format: N = 6
Result:   
1          1
12        21
123      321
1234    4321
12345  54321
123456654321
*/


let input = 6
for i in 1...input{
    for j in 1...(2*input){
        if (j<=i){
            print(j, terminator: "")
        }else if (j>i && j <= 2*input - i){
            print(" ", terminator: "")
        }
        else{
            print(2*input-j+1, terminator: "")
        }
    }
    print("", terminator: "\n")
}
