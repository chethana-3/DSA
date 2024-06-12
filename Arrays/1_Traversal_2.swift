// Given an array of integers, find the sum of all the elements.
let numbers = [1, 2, 3, 4, 5]
var sum = 0
for number in numbers{
    sum += number
}

print(sum)

//using higher order functions

var sumByHigherOrderMethods = numbers.reduce(0, +)
print(sumByHigherOrderMethods)