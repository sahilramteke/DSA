//
//  FastAndSlowPointers.swift
//  DSA
//
//  Created by Sahil Ramteke on 22/07/25.
//

//  Happy Number
//
//  Write an algorithm to determine if a number n is
//  a happy number.
//
//  We use the following process to check if a given
//  number is a happy number:
//  - Starting with the given number n, replace
//    the number with the sum of the squares of its digits.
//  - Repeat the process until:
//    - The number equals 1, which will depict that the
//      given number n is a happy number.
//    - The number enters a cycle, which will depict
//      that the given number n is not a happy number.
//
//  Return TRUE if n is a happy number, and FALSE if not.
//
//  Constraints:
//    --> 1 <= n <= 2^31 - 1
func isHappyNumber(_ n: Int) -> Bool {
  func sumOfSquaredDigits(_ n: Int) -> Int {
    var result = 0
    var num = n

    while num != 0 {
      let digit = num % 10
      result += digit * digit
      num /= 10
    }
    return result
  }

  var slow = sumOfSquaredDigits(n)
  var fast = sumOfSquaredDigits(sumOfSquaredDigits(n))
  var count = 0
  print("count: \(count), slow: \(slow), fast: \(fast)")
  guard fast != 1 else { return true }

  while slow != fast {
    count += 1
    guard fast != 1 else { return true }
    slow = sumOfSquaredDigits(slow)
    fast = sumOfSquaredDigits(sumOfSquaredDigits(fast))
    print("count: \(count), slow: \(slow), fast: \(fast)")
  }
  return false
}

//  Linked List Cycle
//
//  Check whether or not a linked list contains a cycle.
//  If a cycle exists, return TRUE. Otherwise, return FALSE.
//  The cycle means that at least one node can be reached
//  again by traversing the next pointer.
//
//  Constraints:
//  Let n be the number of nodes in a linked list.
//    --> 0 <= n <= 500
//    --> =10^5 <= Node.value <= 10^5
func detectCycle(_ head: Node<Int>?) -> Bool {
  var slow = head, fast = head

  while fast != nil, fast?.next != nil {
    slow = slow?.next
    fast = fast?.next?.next

    if slow?.value == fast?.value {
      return true
    }
  }

  return false
}
