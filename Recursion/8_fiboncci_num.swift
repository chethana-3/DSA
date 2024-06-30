// Print Fibonacci Series up to Nth term

func fibonacci(_ num: Int) -> [Int]{
    if num == 0{
        return []
    }else if num == 1{
        return [0]
    }else if num == 2{
        return [0, 1]
    }
    var series = fibonacci(num - 1)
    let next =  series[series.count-1] + series[series.count-2]
    series.append(next)

    return series
}
print(fibonacci(0))
