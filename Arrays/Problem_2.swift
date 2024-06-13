import Foundation
/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number is such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-44   48 5555 8361" should become
     "004-448-555-583-61"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */
func solution(_ S : String) -> String {
    // do your work here
    let formattedString = S.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")
    let explict = formattedString.count % 3
    var finalAnswer = ""
    for (index,char) in formattedString.enumerated(){
        let index = index+1

            if (explict == 1 && index == formattedString.count - 2){
                finalAnswer += "\(char)-"
            }else if(index%3 == 0 && index != formattedString.count && index != formattedString.count - 1){
                finalAnswer += "\(char)-"
            }
            else{
                finalAnswer += "\(char)"
            }
    }
    return finalAnswer
}

print(solution2("123456789"))           // 123-456-789
print(solution2("555372654"))           // 555-372-654
print(solution2("0 - 22 1985--324"))    // 022-198-53-24

// Edge cases
print(solution2("01"))                          // 01
print(solution2("012"))                         // 012
print(solution2("0123"))                        // 01-23
print(solution2("0123       444"))              // 012-34-44
print(solution2("------0123       444"))        // 012-34-44


//optimised solution

func solution2(_ S : String) -> String {
    // do your work here
    let formattedString = S.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")
    var arrayOfChar = Array(formattedString)
    var finalAnswer = ""
    
    while (arrayOfChar.count > 4){
        finalAnswer += String(arrayOfChar.prefix(3)) + "-"
        arrayOfChar.removeFirst(3)
    }

    if arrayOfChar.count == 4{
        finalAnswer += String(arrayOfChar.prefix(2)) + "-" + String(arrayOfChar.prefix(2))
    }else{
        finalAnswer += String(arrayOfChar)
    }

    return finalAnswer
}
// We avoid unnecessary checks and branches by using a while loop for the main part and 
// a simple conditional check for the remaining characters.