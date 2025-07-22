//
//  FastAndSlowPointersTests.swift
//  DSA
//
//  Created by Sahil Ramteke on 22/07/25.
//

import Testing
import DSA

struct FastAndSlowPointersTests {
  @Test(arguments:[ 1, 7, 10, 13 ])
  func test_isHappyNumber_pass(n: Int) {
    #expect(isHappyNumber(n) == true, "\(n) is not a happy number")
  }

  @Test(arguments:[ 2, 98, 71, 50 ])
  func test_isHappyNumber_fail(n: Int) {
    #expect(isHappyNumber(n) == false, "\(n) is happy number")
  }
}
