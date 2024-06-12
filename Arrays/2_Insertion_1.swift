// Insert element at index

var numbers = [1, 2, 3, 4, 5]
let value = 10
let index = 2

numbers.insert(10, at: 2)
print(numbers)

//improvement
if index >= 0 && index <= numbers.count {
    numbers.insert(value, at: index)
} else {
    print("Index out of bounds")
}
// This will ensure that the index is valid before attempting the insertion.
print(numbers)
