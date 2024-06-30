//Sum of first N Natural Numbers

// Print N to 1 using Recursion

func getSum(_ num: Int)->Int{
    if num == 1{
        return 1
    }
    return num + getSum(num-1)
}
print(getSum(15))