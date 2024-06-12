// Count occurrences of element

let numbers = [1, 2, 3, 4, 5, 3, 3, 6]
let value = 3

var count = 0

for number in numbers{
    if number == value{
        count += 1
    }
}
print(count)