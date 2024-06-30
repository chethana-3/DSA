//Print Name N times using Recursion

func printName(_ count: Int, _ max: Int){
    if count > max{
        return
    }
    print("Chethana")
    printName(count+1, max)
}
printName(1, 5)
