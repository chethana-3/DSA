// Find index of element

let numbers = [1, 2, 3, 4, 5]
let value = 3

for (index,number) in numbers.enumerated(){
    if number == value{
        print("Found at \(index)")
        break
    }
}

//Alternative approach also efficient when array count is large

if let index = numbers.firstIndex(of: value){
    print(index)
}