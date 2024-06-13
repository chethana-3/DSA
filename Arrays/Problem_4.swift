import Foundation

/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 Answer should be correct. Don't worry about performance.
 */

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

print(solutionDict(A, B, P))   // pom
print(solutionDict(["sander", "amy", "ann"], ["12345", "23456", "123"], "1"))  // ann
print(solutionDict(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112"))   // NO CONTACT

// edge cases
print(solutionDict([String](), [String](), ""))
print(solutionDict(A, B, ""))

public func solutionDict(_ A : [String], _ B : [String], _ P : String) -> String {
    // 🕹 Game on here
    var namePhoneNumberDict = [String:String]()

    for i in 0..<B.count{
        namePhoneNumberDict[A[i]] = B[i]
    }

    let matches = namePhoneNumberDict.filter{
        $0.value.contains(P)
    }

    return matches.isEmpty ? "NO CONTACT" : matches.keys.sorted().first!
}