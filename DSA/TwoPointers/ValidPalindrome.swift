//
// Valid Palindromw
//
// Write a function that takes a string, s, as an input
// and determines whether or not it is a palindrome.
//
// Note: A palindrome is a word, phrase, or sequence
// of characters that reads the same backward as forward.
//
// Constraints:
//   --> 1 <= s.length <= 2x10^5
//   --> The string `s` will contain English uppercase
//       and lowercase letters, digits, and spaces.
//


public func isPalindrome(_ s: String) -> Bool {
  var startIndex = s.startIndex
  var endIndex = s.index(before: s.endIndex)

  while startIndex < endIndex {
    guard s[startIndex] == s[endIndex] else {
      return false
    }
    startIndex = s.index(after: startIndex)
    endIndex = s.index(before: endIndex)
  }
  return true
}
