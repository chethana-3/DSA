// Given a string, determine if a permutation of string could be a palindrome.

func canFormPalindrome(_ s: String) -> Bool{
    var charCount = [Character: Int]()

    for character in s{
        charCount[character, default: 0] += 1
    }

    var oddCountCharar = 0
    for value in charCount.values{
        if value%2 != 0 {
            oddCountCharar += 1
        }
    }

    return oddCountCharar <= 1
}
print(canFormPalindrome("aabb")) // true
print(canFormPalindrome("aabbc")) // true
print(canFormPalindrome("abc")) // false
print(canFormPalindrome("a"))