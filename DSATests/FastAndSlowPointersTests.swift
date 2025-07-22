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
  func test_isHappyNumber(n: Int) {
    #expect(isHappyNumber(n) == true, "\(n) is not a happy number")
  }

  @Test(arguments:[ 2, 98, 71, 50 ])
  func test_isHappyNumber_fail(n: Int) {
    #expect(isHappyNumber(n) == false, "\(n) is happy number")
  }

  @Test(arguments:[([2, 98, 71, 50, 30, 80], 2)])
  func test_detectCycle(t: (list: [Int], n: Int)) {
    let linkedList = LinkedList(t.list)
    var cycleStart = linkedList.head
    for _ in 0..<t.n - 1 {
      cycleStart = cycleStart?.next
    }
    // Create cycle
    linkedList.tail?.next = cycleStart

    #expect(detectCycle(linkedList.head) == true)
  }

  @Test(arguments:[[2, 98, 71, 50, 30, 80]])
  func test_detectCycle_fail(list: [Int]) {
    let linkedList = LinkedList(list)
    #expect(detectCycle(linkedList.head) == false)
  }
}
