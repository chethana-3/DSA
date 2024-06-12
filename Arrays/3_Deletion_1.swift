// Remove element at index

var numbers = [1, 2, 3, 4, 5]
let index = 2

if index >= 0 && index < numbers.count{
    numbers.remove(at: index)
}

print(numbers)