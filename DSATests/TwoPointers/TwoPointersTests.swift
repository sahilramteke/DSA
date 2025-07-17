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
  func test_Valid_Palindrome_pass(s: String) {
    #expect(isPalindrome(s) == true, "Failed for case \"\(s)\"")
  }

  @Test(arguments:[ "12345", "abcde", "afternoon" ])
  func test_valid_palindrome_fail(s: String) {
    #expect(isPalindrome(s) == false, "Failed for case \"\(s)\"")
  }
}
