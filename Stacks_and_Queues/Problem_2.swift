import Foundation

// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

func solution(_ text: String) -> String {
    // Do your work here... 
    var result: [String] = []
    for char in text{
        result.last = char
    }
    return String(result)
}

solution("abc") // bca
solution("Would you like to play a game?")
