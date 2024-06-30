// Print 1 to N using Recursion

func printNum( _ max: Int, _ num: Int = 1){
    if num > max{
        return
    }
    print(num)
    printNum(max, num+1)
}
printNum(15)