//Factorial of a Number : Iterative and Recursive

// Print N to 1 using Recursion

func getFactorial(_ num: Int)->Int{
    if num == 1{
        return 1
    }
    return num * getFactorial(num-1)
}
print(getFactorial(5))