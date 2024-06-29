/*
Pattern - 10: Half Diamond Star Pattern
Problem Statement: Given an integer N, print the following pattern : 

Input Format: N = 3
Result: 
  *  
  **
  ***  
  **
  *   
Input Format: N = 6
Result:   
     *
     **
     *** 
     ****
     *****
     ******  
     *****
     ****
     ***    
     **
     *

*/

let input = 3
for i in 0..<(2*input){
    for j in 1...input{
        var k = i
        if k > input{
            k = 2*input - i
        }
        if(j < k+1 ){
            print("*", terminator: "")
        }else{
            print(" ", terminator: "")
        }
    }
    print("", terminator: "\n")
}