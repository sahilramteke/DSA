//
//  Remove nth Node from End of List
//
//
//
//  Given a singly linked list, remove the (n)th node
//  from the end of the list and return removed node.
//
//  Constraints:
//    - The number of nodes in the list is k
//    - 1 <= k <= 10^3
//    - -10^3 <= Node.value <= 10^3
//    - 1 <= n <= k
//

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
