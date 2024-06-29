/*
Pattern - 22: The Number Pattern
Problem Statement: Given an integer N, print the following pattern : 
Input Format: N = 3
Result: 
3 3 3 3 3 
3 2 2 2 3 
3 2 1 2 3 
3 2 2 2 3 
3 3 3 3 3

Input Format: N = 6
Result:   
6 6 6 6 6 6 6 6 6 6 6 
6 5 5 5 5 5 5 5 5 5 6 
6 5 4 4 4 4 4 4 4 5 6 
6 5 4 3 3 3 3 3 4 5 6 
6 5 4 3 2 2 2 3 4 5 6 
6 5 4 3 2 1 2 3 4 5 6 
6 5 4 3 2 2 2 3 4 5 6 
6 5 4 3 3 3 3 3 4 5 6 
6 5 4 4 4 4 4 4 4 5 6 
6 5 5 5 5 5 5 5 5 5 6 
6 6 6 6 6 6 6 6 6 6 6
*/
let input = 6
for i in 0...(2*input-1){
    for j in 0...(2*input-1){
        let top = i
        let left = j
        let bottom = (2*input-1) - i
        let right = (2*input-1) - j

        let min = input - min(min(top,bottom), min(left,right))
        print(min, terminator: " ")
    }
    print("", terminator: "\n")
}