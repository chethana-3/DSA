/*
Pattern - 21: Hollow Rectangle Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
***
* *
***

Input Format: N = 6
Result:   
******
*    *
*    *
*    *
*    *
******
*/
let input = 6
for i in 1...input{
    for j in 1...input{
        if (i == 1 || i == input || j == 1 || j == input){
            print("*", terminator: "")
        }else{
            print(" ", terminator: "")
        }
    }
    print("", terminator: "\n")
}