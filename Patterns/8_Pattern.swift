/*
Pattern - 8: Inverted Star Pyramid
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
*****  
 ***
  *   
Input Format: N = 6
Result:     
***********
 *********
  *******
   ***** 
    ***    
     *

*/

let input = 6
for i in 1...input{
    for j in 1...(2*input-1){
        if(j < i || j > 2*input-i){
            print(" ", terminator: "")
        }else{
            print("*", terminator: "")
        }
    }
    print("", terminator: "\n")
}
