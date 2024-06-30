// Check if the given String is Palindrome or not

func isPallindrone(_ s: String, _ end: Int, _ start: Int = 0) -> Bool{
    if start >= end{
        return true
    }
    if Array(s)[start] != Array(s)[end]{
        return false
    }
    return isPallindrone(s, end-1, start+1)
}
var s = "ABCDC0BA"
let k = isPallindrone(s, s.count-1)
print(k)


