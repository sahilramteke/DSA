//
//  TwoPointersTests.swift
//  DSA
//
//  Created by Sahil Ramteke on 17/07/25.
//

import Testing
import DSA

struct TwoPointersTests {
  @Test(arguments:[ "12321", "abcba", "noon", "a b a" ])
  func test_valid_palindrome_pass(s: String) {
    #expect(isPalindrome(s) == true, "Failed for case \"\(s)\"")
  }

  @Test(arguments:[ "12345", "abcde", "afternoon" ])
  func test_valid_palindrome_fail(s: String) {
    #expect(isPalindrome(s) == false, "Failed for case \"\(s)\"")
  }

  @Test(arguments: [
    ([1, 2, 3, 4, 5], 2, 4),
    ([1, 2, 3, 4, 5], 3, 3),
    ([1, 2, 3, 4, 5], 4, 2),
  ])
  func test_removeNthNodeFromEnd_pass(testCase: (list: [Int], n: Int, expected: Int)) {
    let list = LinkedList(testCase.list)
    #expect(
      removeNthNodeFromEnd(list.head, testCase.n)?.value == testCase.expected
    )
  }
}

@Test(arguments: [[1,2,0,1,2,0], [1,2,1,1,2,0]])
func test_sortColors(colors: [Int]) {
  #expect(sortColors(colors: colors) == colors.sorted())
}
