// Given an array of strings, print all the elements in reverse order.

var words = ["apple", "banana", "cherry", "date"]

for fruitIndex in stride(from: words.count - 1, through: 0, by: -1){
    print(words[fruitIndex])
} 

// alternative approach

for fruit in words.reversed() {
    print(fruit)
}

//for understanding purpose
print(words.reverse())
print(words)