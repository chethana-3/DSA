// Print N to 1 using Recursion

func printNum(_ num: Int){
    if num < 1{
        return
    }
    print(num)
    printNum(num-1)
}
printNum(15)