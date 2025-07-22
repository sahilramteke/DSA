//
//  TwoPointers.swift
//  DSA
//
//  Created by Sahil Ramteke on 22/07/25.
//

// Valid Palindrome
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
func isPalindrome(_ s: String) -> Bool {
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

//  Sort Color
//
//  Given an array, colors, which contains a combination
//  of the following three elements:
//  - 0 (representing red)
//  - 1 (representing white)
//  - 2 (representing blue)
//
//  Sort the array in place so that the elements of the same color
//  are adjacent, with the colors in the order of red, white,
//  and blue. To improve your problem-solving skills,
//  do not utilize the built-in sort function.
//
//  Constraints:
//  - 1 <= colors.length <= 10^3
//  - colors[i] can only contains 0s, 1s or 2s
func sortColors(colors: [Int]) -> [Int] {
  var result = colors
  var startIndex = 0
  var endIndex = result.count - 1
  var currentIndex = 0
  for _ in 0..<result.count {
    if result[currentIndex] == 0 {
      result.swapAt(startIndex, currentIndex)
      startIndex += 1
      currentIndex += 1
    } else if result[currentIndex] == 1 {
      currentIndex += 1
    } else {
      result.swapAt(currentIndex, endIndex)
      endIndex -= 1
    }
  }
  return result
}

//  Remove nth Node from End of List
//
//  Given a singly linked list, remove the (n)th node
//  from the end of the list and return removed node.
//
//  Constraints:
//    - The number of nodes in the list is k
//    - 1 <= k <= 10^3
//    - -10^3 <= Node.value <= 10^3
//    - 1 <= n <= k
func removeNthNodeFromEnd<T>(
  _ head: Node<T>?,
  _ n: Int) -> Node<T>? {
    var left = head
    var right = left
    for _ in 0..<n {
      right = right?.next
    }
    while let _ = right?.next {
      left = left?.next
      right = right?.next
    }
    let removedNode = left?.next
    left?.next = left?.next?.next
    return removedNode
  }
